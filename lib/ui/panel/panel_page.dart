import 'dart:async';

import 'package:androidmakers_schedule/blocs/panel_bloc.dart';
import 'package:androidmakers_schedule/models/session.dart';
import 'package:androidmakers_schedule/ui/res/app_colors.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PanelPage extends StatelessWidget {
  const PanelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PanelBloc, PanelState>(
      builder: (BuildContext context, PanelState state) {
        if (state.messages?.isNotEmpty == true) {
          return const _PanelContent();
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

class _PanelContent extends StatelessWidget {
  const _PanelContent();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Column(
      children: <Widget>[
        SizedBox(height: height * 0.43, child: const _PanelHeader()),
        SizedBox(height: height * 0.57, child: const _PanelMessage()),
      ],
    );
  }
}

class _PanelHeader extends StatelessWidget {
  const _PanelHeader();

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.veryLightBlue,
      child: SizedBox.expand(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final double height = constraints.maxHeight;
            final double width = constraints.maxWidth;
            final double textWidth = width * 0.9;
            final double textHeight = textWidth * 114 / 441;

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/logo_visual.svg',
                    height: (height - textHeight) * 0.55,
                  ),
                  const SizedBox(height: 10.0),
                  SvgPicture.asset(
                    'assets/logo_text.svg',
                    width: textWidth,
                    //height: textHeight,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _PanelMessage extends StatefulWidget {
  const _PanelMessage();

  @override
  State<_PanelMessage> createState() => _PanelMessageState();
}

class _PanelMessageState extends State<_PanelMessage> {
  Timer? _timer;
  PanelMessage? _currentMessage;
  int _currentMessageIndex = 0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _onReloadMessages();
    });
  }

  void _onReloadMessages() {
    final Iterable<PanelMessage> messages =
        BlocProvider.of<PanelBloc>(context).state.messages!;

    if (messages.isNotEmpty) {
      setState(() {
        _currentMessage = messages.first;
      });
    }

    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 20), (_) {
      if (context.mounted) {
        final Iterable<PanelMessage> messages =
            BlocProvider.of<PanelBloc>(context).state.messages!;

        if (messages.length > 1) {
          _currentMessageIndex++;
          if (_currentMessageIndex >= messages.length) {
            _currentMessageIndex = 0;
          }
          setState(() {
            _currentMessage = messages.elementAt(_currentMessageIndex);
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_currentMessage == null) {
      return const SizedBox.shrink();
    }

    return BlocListener<PanelBloc, PanelState>(
      listener: (BuildContext context, PanelState state) {
        _onReloadMessages();
      },
      child: SizedBox.expand(
        child: switch (_currentMessage) {
          null => const SizedBox.shrink(),
          TextPanelMessage _ =>
            _PanelTextMessage(message: _currentMessage as TextPanelMessage),
          DevLoungeMessage _ => _PanelDevLoungeMessage(
              message: _currentMessage as DevLoungeMessage,
            ),
        },
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

class _PanelTextMessage extends StatelessWidget {
  final TextPanelMessage message;

  const _PanelTextMessage({required this.message});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          color: Colors.white,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: constraints.maxWidth * 0.04,
            vertical: constraints.maxHeight * 0.04,
          ),
          child: DefaultTextStyle.merge(
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: _findFontSize(constraints.maxWidth),
              fontFamily: 'Montserrat',
            ),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final bool hasUrl = message.url?.isNotEmpty == true;

                final Widget content = Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _FormattedText(message.line1),
                    if (message.line2?.isNotEmpty == true)
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: _FormattedText(message.line2!),
                      ),
                  ],
                );

                if (!hasUrl) {
                  return content;
                } else {
                  return Column(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: content,
                      ),
                      Expanded(
                        flex: 4,
                        child: QrImageView(data: message.url!),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        );
      },
    );
  }

  double _findFontSize(double maxWidth) {
    if (maxWidth < 250) {
      return 19.0;
    } else if (maxWidth < 340) {
      return 21.0;
    } else if (maxWidth < 450) {
      return 24.0;
    } else {
      return 28.0;
    }
  }
}

class _PanelDevLoungeMessage extends StatelessWidget {
  final DevLoungeMessage message;

  const _PanelDevLoungeMessage({required this.message});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              color: AppColors.darkBlue,
              padding: EdgeInsets.symmetric(
                horizontal: constraints.maxWidth * 0.04,
                vertical: constraints.maxWidth * 0.02,
              ),
              child: const AutoSizeText(
                'Dev Lounge',
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            Expanded(
              child: SizedBox.expand(
                child: ColoredBox(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        message.title,
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: const TextStyle(
                          color: AppColors.red,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 25.0,
                        ),
                      ),
                      AutoSizeText(
                        _formatTime(),
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          fontSize: 25.0,
                        ),
                      ),
                      AutoSizeText(
                        message.session.speakers
                            .map((Speaker e) => e.name)
                            .join(',\n'),
                        maxLines: 4,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  String _formatTime() {
    final DateFormat formatter = DateFormat('HH:mm');
    return '${formatter.format(message.session.startDate)} - ${formatter.format(message.session.endDate)}';
  }
}

class _FormattedText extends StatelessWidget {
  final String text;

  const _FormattedText(this.text);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: _extractFormat(text)
            .map(
              ((String, _FontType) e) => TextSpan(
                text: e.$1,
                style: e.$2 == _FontType.bold
                    ? const TextStyle(fontWeight: FontWeight.w700)
                    : null,
              ),
            )
            .toList(growable: false),
      ),
    );
  }

  List<(String, _FontType)> _extractFormat(String str) {
    final Iterable<RegExpMatch> matches =
        RegExp(r'(<b>.*?</b>)').allMatches(str);
    final List<(String, _FontType)> result = <(String, _FontType)>[];

    int lastEnd = 0;
    for (final RegExpMatch match in matches) {
      for (int i = 0; i != match.groupCount; i++) {
        if (lastEnd != match.start) {
          result.add((str.substring(lastEnd, match.start), _FontType.regular));
        }

        result.add(
            (str.substring(match.start + 3, match.end - 4), _FontType.bold));
        lastEnd = match.end;
      }
    }

    if (lastEnd < str.length) {
      result.add((str.substring(lastEnd), _FontType.regular));
    }

    return result;
  }
}

enum _FontType {
  regular,
  bold,
}
