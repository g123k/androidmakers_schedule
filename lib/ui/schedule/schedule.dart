import 'package:androidmakers_schedule/blocs/current_slot_bloc.dart';
import 'package:androidmakers_schedule/blocs/sessions_bloc.dart';
import 'package:androidmakers_schedule/models/session.dart';
import 'package:androidmakers_schedule/ui/sessions/one_session_layout.dart';
import 'package:androidmakers_schedule/ui/sessions/up_to_four_sessions_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return BlocProvider<CurrentSessionBloc>(
          create: (BuildContext context) {
            return CurrentSessionBloc(
                BlocProvider.of<SessionsBloc>(context), <Room>[
              Room.moebius,
              Room.blin,
              Room.twoZeroTwo,
              Room.twoZeroFour,
            ]);
          },
          child: BlocBuilder<CurrentSessionBloc, CurrentSessionState>(
            builder: (
              BuildContext context,
              CurrentSessionState state,
            ) {
              return Scaffold(
                body: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: constraints.maxWidth * 0.05,
                  ),
                  child: Center(
                    child: switch (state.currentSlot?.sessions.length) {
                      null => const CircularProgressIndicator(),
                      1 => const OneSessionLayout(),
                      2 => const UpToFourSessionsLayout(),
                      3 => const UpToFourSessionsLayout(),
                      4 => const UpToFourSessionsLayout(),
                      5 => const UpToFourSessionsLayout(),
                      _ => const CircularProgressIndicator(),
                    },
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
