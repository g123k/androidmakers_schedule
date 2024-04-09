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
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 50),
          const _OneSessionHeader(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.47,
            child: const _OneSessionItem(),
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

    final List<Widget> children;

    if (slot.isFirstSlot) {
      children = <Widget>[
        const Text(
          'Welcome!',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w800,
            fontFamily: 'Montserrat',
          ),
        ),
        const SizedBox(height: 10.0),
        const Text(
          'The event will begin in a few minutes',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat',
          ),
        ),
        const SizedBox(height: 40.0),
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

    return Row(
      children: <Widget>[
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
                    vertical: 30,
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
                    ),
                  ),
                ),
              ),
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
