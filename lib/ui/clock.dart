import 'dart:async';

import 'package:androidmakers_schedule/ui/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  late Timer _timer;
  DateTime _date = DateTime.now();

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      final DateTime now = DateTime.now();
      if (context.mounted && now.minute != _date.minute) {
        setState(() {
          _date = now;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      width: screenWidth * 0.17,
      color: AppColors.red,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.027,
          vertical: screenWidth * 0.008,
        ),
        child: FittedBox(
          child: Text(
            '${formatTime(_date.hour)}:${formatTime(_date.minute)}',
            style: GoogleFonts.montserrat().copyWith(fontSize: 50.0),
          ),
        ),
      ),
    );
  }

  String formatTime(int value) {
    return value.toString().padLeft(2);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
