import 'dart:async';

import 'package:androidmakers_schedule/ui/res/app_colors.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  late Timer _timer;
  final NumberFormat _numberFormat = NumberFormat('00');
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
      width: screenWidth * 0.13,
      color: AppColors.red,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.005,
          vertical: screenWidth * 0.004,
        ),
        child: AutoSizeText(
          '${formatTime(_date.hour)}:${formatTime(_date.minute)}',
          textAlign: TextAlign.center,
          maxLines: 1,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 40.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  String formatTime(int value) {
    return _numberFormat.format(value);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
