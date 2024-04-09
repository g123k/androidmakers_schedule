import 'package:androidmakers_schedule/blocs/panel_bloc.dart';
import 'package:androidmakers_schedule/ui/panel/panel_page.dart';
import 'package:androidmakers_schedule/ui/sessions/sessions_homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PanelBloc, PanelState>(
        builder: (BuildContext context, PanelState state) {
          final double panelWidth = state.messages?.isNotEmpty == true
              ? MediaQuery.of(context).size.width * 0.25
              : 0;

          return Stack(
            children: <Widget>[
              AnimatedPositioned(
                top: 0,
                left: 0,
                bottom: 0,
                duration: const Duration(milliseconds: 250),
                width: panelWidth,
                curve: Curves.easeInOut,
                child: const PanelPage(),
              ),
              Positioned(
                top: 0,
                left: panelWidth,
                right: 0,
                bottom: 0,
                child: const SessionsHomePage(),
              ),
            ],
          );
        },
      ),
    );
  }
}
