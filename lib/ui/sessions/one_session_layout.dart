import 'package:androidmakers_schedule/blocs/current_slot_bloc.dart';
import 'package:androidmakers_schedule/models/session.dart';
import 'package:androidmakers_schedule/models/slot.dart';
import 'package:androidmakers_schedule/ui/res/app_colors.dart';
import 'package:androidmakers_schedule/ui/sessions/sessions_utils.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class OneSessionLayout extends StatelessWidget {
  const OneSessionLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 50),
          Expanded(flex: 31, child: _OneSessionHeader()),
          Expanded(
            flex: 47,
            child: _OneSessionItem(),
          ),
        ],
      ),
    );
  }
}

class _OneSessionHeader extends StatelessWidget {
  const _OneSessionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final CurrentSessionState slot =
        BlocProvider.of<CurrentSessionBloc>(context).state;

    if (slot.currentSlot?.sessions.elementAtOrNull(0)?.type == 'service') {
      return const SizedBox.shrink();
    }

    final List<Widget> children;

    if (slot.isFirstSlot) {
      children = <Widget>[
        const Expanded(
          flex: 4,
          child: AutoSizeText(
            'Welcome!',
            maxLines: 1,
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w800,
              fontFamily: 'Montserrat',
            ),
          ),
        ),
        const Spacer(flex: 1),
        const Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: AutoSizeText(
              'The event will begin in a few minutes',
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ),
        const Spacer(flex: 1),
      ];
    } else {
      final DateFormat formatter = DateFormat('HH:mm');
      children = <Widget>[
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            color: AppColors.red,
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
            child: Text(
              formatter.format(slot.currentSlot!.sessions.first.startDate),
              textAlign: TextAlign.end,
              style: const TextStyle(
                fontSize: 50.0,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ),
      ];
    }

    return Column(children: children);
  }
}

class _OneSessionItem extends StatelessWidget {
  const _OneSessionItem();

  @override
  Widget build(BuildContext context) {
    final Slot slot =
        BlocProvider.of<CurrentSessionBloc>(context).state.currentSlot!;
    final Session session = slot.sessions.first;
    final bool isService = session.type == 'service';

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: <Widget>[
          if (!isService)
            Expanded(
              flex: 8,
              child: RoomName(room: session.room),
            ),
          Expanded(
            flex: 90,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Container(
                    width: double.infinity,
                    color: AppColors.red,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 60,
                    ),
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      session.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 1000,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                if (!isService)
                  Expanded(
                    flex: 6,
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                        child: IntrinsicWidth(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: session.speakers
                                .map(
                                  (Speaker speaker) =>
                                      _OneSessionSpeakerItem(speaker: speaker),
                                )
                                .toList(growable: false),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _OneSessionSpeakerItem extends StatelessWidget {
  final Speaker speaker;

  const _OneSessionSpeakerItem({required this.speaker});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(speaker.photo ?? ''),
          ),
          const SizedBox(width: 10.0),
          Text(
            speaker.name,
            style: const TextStyle(
              fontSize: 30.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
