import 'dart:io';

import 'package:androidmakers_schedule/blocs/current_slot_bloc.dart';
import 'package:androidmakers_schedule/blocs/panel_bloc.dart';
import 'package:androidmakers_schedule/blocs/sessions_bloc.dart';
import 'package:androidmakers_schedule/models/session.dart';
import 'package:androidmakers_schedule/models/slot.dart';
import 'package:androidmakers_schedule/ui/homepage/homepage.dart';
import 'package:androidmakers_schedule/ui/overlays/network_indicator.dart';
import 'package:androidmakers_schedule/ui/res/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isLinux || Platform.isMacOS) {
    await windowManager.ensureInitialized();

    final WindowOptions options = WindowOptions(
      fullScreen: !Platform.isMacOS,
      titleBarStyle: TitleBarStyle.hidden,
    );

    windowManager.waitUntilReadyToShow(options, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TopOverlay(
      clock: true,
      networkIndicator: true,
      child: BlocProvider<SessionsBloc>(
        create: (_) => SessionsBloc()
          ..add(
            const ReloadSessionsEvent(force: true),
          ),
        child: BlocListener<SessionsBloc, SessionsState>(
          listener: (BuildContext context, SessionsState state) {
            if (state is LoadedSessionsState) {
              _preloadImages(state, context);
            }
          },
          child: BlocProvider<CurrentSessionBloc>(
            create: (BuildContext context) => CurrentSessionBloc(
              BlocProvider.of<SessionsBloc>(context),
              <Room>[Room.officeHours],
            ),
            child: BlocProvider<PanelBloc>(
              create: (BuildContext context) => PanelBloc(
                BlocProvider.of<CurrentSessionBloc>(context),
              )..add(const ReloadPanelContent()),
              child: MaterialApp(
                title: 'Flutter Demo',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  fontFamily: 'Montserrat',
                  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.red),
                  scaffoldBackgroundColor: AppColors.lightBlue,
                  useMaterial3: true,
                ),
                home: const HomePage(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _preloadImages(LoadedSessionsState state, BuildContext context) {
    for (final Slot slot in state.slots) {
      for (final Session session in slot.sessions) {
        for (final Speaker speaker in session.speakers) {
          if (speaker.photo != null) {
            precacheImage(
              CachedNetworkImageProvider(speaker.photo!),
              context,
            );
          }
        }
      }
    }
  }
}
