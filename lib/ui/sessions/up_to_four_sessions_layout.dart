import 'package:androidmakers_schedule/blocs/current_slot_bloc.dart';
import 'package:androidmakers_schedule/models/session.dart';
import 'package:androidmakers_schedule/models/slot.dart';
import 'package:androidmakers_schedule/ui/res/app_colors.dart';
import 'package:androidmakers_schedule/ui/sessions/sessions_utils.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpToFourSessionsLayout extends StatelessWidget {
  const UpToFourSessionsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final Slot slot =
        BlocProvider.of<CurrentSessionBloc>(context).state.currentSlot!;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Spacer(flex: 10),
          ...slot.sessions.map(
            (Session session) => Expanded(
              flex: 21,
              child: _FourSessionItem(session: session),
            ),
          ),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}

class _FourSessionItem extends StatelessWidget {
  final Session session;

  const _FourSessionItem({
    required this.session,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Card(
        shape: const ContinuousRectangleBorder(),
        elevation: 0.5,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 8,
              child: RoomName(room: session.room),
            ),
            Expanded(
              flex: 90,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth * 0.03,
                      vertical: constraints.maxHeight * 0.1,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 6,
                          child: AutoSizeText(
                            session.title,
                            maxLines: 2,
                            style: const TextStyle(
                              color: AppColors.red,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: _SpeakersItem(speakers: session.speakers),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SpeakersItem extends StatelessWidget {
  final Iterable<Speaker> speakers;

  const _SpeakersItem({required this.speakers});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _SpeakersPhotos(
              urls: speakers.map((Speaker speaker) => speaker.photo),
              dimension: constraints.maxHeight * 0.9,
            ),
            const SizedBox(width: 15.0),
            Expanded(
              child: _SpeakersNames(
                names: speakers.map((Speaker speaker) => speaker.name),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _SpeakersNames extends StatelessWidget {
  final Iterable<String> names;

  const _SpeakersNames({required this.names});

  @override
  Widget build(BuildContext context) {
    if (names.isEmpty) {
      return const SizedBox.shrink();
    } else if (names.length <= 1) {
      return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: _SpeakerName(name: names.first),
        ),
      );
    } else if (names.length == 2) {
      return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: _SpeakerName(
            name: '${names.elementAt(0)} & ${names.elementAt(1)}',
          ),
        ),
      );
    } else if (names.length == 3) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(child: _SpeakerName(name: names.elementAt(0))),
                Expanded(child: _SpeakerName(name: names.elementAt(1))),
              ],
            ),
          ),
          Expanded(child: _SpeakerName(name: names.elementAt(2))),
        ],
      );
    } else if (names.length == 4) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(child: _SpeakerName(name: names.elementAt(0))),
                Expanded(child: _SpeakerName(name: names.elementAt(1))),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(child: _SpeakerName(name: names.elementAt(2))),
                Expanded(child: _SpeakerName(name: names.elementAt(3))),
              ],
            ),
          ),
        ],
      );
    } else if (names.length == 5) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(child: _SpeakerName(name: names.elementAt(0))),
                Expanded(child: _SpeakerName(name: names.elementAt(1))),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(child: _SpeakerName(name: names.elementAt(2))),
                Expanded(child: _SpeakerName(name: names.elementAt(3))),
              ],
            ),
          ),
          Expanded(child: _SpeakerName(name: names.elementAt(4))),
        ],
      );
    }

    return const Placeholder();
  }
}

class _SpeakerName extends StatelessWidget {
  final String name;

  const _SpeakerName({required this.name});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      name,
      maxLines: 1,
      style: const TextStyle(
        color: Color(0xFF525252),
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
        fontSize: 20.0,
      ),
    );
  }
}

class _SpeakersPhotos extends StatelessWidget {
  final Iterable<String?> urls;
  final double dimension;

  const _SpeakersPhotos({
    required this.urls,
    required this.dimension,
  });

  @override
  Widget build(BuildContext context) {
    if (urls.length > 4) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: dimension,
      width: dimension + ((dimension * (urls.length - 1)) * 0.75),
      child: Stack(
        children: <Widget>[
          for (int i = 0; i < urls.length; i++)
            Positioned(
              left: i * dimension * 0.75,
              child: CachedNetworkImage(
                imageUrl: urls.elementAt(i) ?? '',
                imageBuilder: (BuildContext context, ImageProvider image) {
                  return CircleAvatar(
                    radius: dimension / 2,
                    backgroundImage: image,
                  );
                },
                errorListener: (_) {},
              ),
            ),
        ],
      ),
    );
  }
}
