import 'package:androidmakers_schedule/blocs/sessions_bloc.dart';
import 'package:androidmakers_schedule/ui/schedule/schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SessionsHomePage extends StatelessWidget {
  const SessionsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: const TextStyle(fontFamily: 'Montserrat'),
      child: BlocBuilder<SessionsBloc, SessionsState>(
        builder: (
          BuildContext context,
          SessionsState state,
        ) {
          switch (state) {
            case LoadingSessionsState():
              if (state.isFirstLoading) {
                return const _InitialLoading();
              } else {
                // TODO
                return const _InitialLoading();
              }
            case LoadedSessionsState():
              return const ScheduleScreen();
            case ErrorLoadingSessionsState():
              if (state.slots == null) {
                return const _ErrorLoadingSessions();
              } else {
                // TODO
                return const _InitialLoading();
              }
          }
        },
      ),
    );
  }
}

class _InitialLoading extends StatelessWidget {
  const _InitialLoading();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(height: 20.0),
            Text('Chargement des sessions…'),
          ],
        ),
      ),
    );
  }
}

class _ErrorLoadingSessions extends StatelessWidget {
  const _ErrorLoadingSessions();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.warning,
              size: 50.0,
              color: Colors.redAccent,
            ),
            const SizedBox(height: 20.0),
            const Text('Impossible de charger les sessions !'),
            const SizedBox(height: 50.0),
            TextButton(
              onPressed: () {
                BlocProvider.of<SessionsBloc>(context)
                    .add(const ReloadSessionsEvent(force: true));
              },
              child: const Text('Ré-essayer'),
            ),
          ],
        ),
      ),
    );
  }
}
