import 'package:androidmakers_schedule/models/session.dart';
import 'package:androidmakers_schedule/ui/res/app_colors.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RoomName extends StatelessWidget {
  final Room? room;
  final TextStyle? style;

  const RoomName({
    required this.room,
    this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkBlue,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      child: RotatedBox(
        quarterTurns: 3,
        child: AutoSizeText(
          _padRoomName(room?.name.toUpperCase() ?? ''),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat',
          ).merge(style),
        ),
      ),
    );
  }

  String _padRoomName(String roomName) {
    final List<String> padding =
        List<String>.generate((7 - roomName.length) ~/ 2, (_) => ' ');
    return padding.join('') + roomName + padding.join('');
  }
}
