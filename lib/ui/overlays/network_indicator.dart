import 'package:androidmakers_schedule/ui/overlays/clock.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class TopOverlay extends StatelessWidget {
  const TopOverlay({
    required this.child,
    this.clock = false,
    this.networkIndicator = false,
    super.key,
  });

  final Widget child;
  final bool clock;
  final bool networkIndicator;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        children: <Widget>[
          Positioned.fill(child: child),
          if (clock)
            const Positioned(
              top: 0.0,
              right: 0.0,
              child: Clock(),
            ),
          if (networkIndicator)
            const Positioned(
              top: 3.0,
              right: 3.0,
              child: _NetworkIndicator(),
            ),
        ],
      ),
    );
  }
}

class _NetworkIndicator extends StatefulWidget {
  const _NetworkIndicator();

  @override
  State<_NetworkIndicator> createState() => _NetworkIndicatorState();
}

class _NetworkIndicatorState extends State<_NetworkIndicator> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ConnectivityResult>>(
      stream: Connectivity().onConnectivityChanged,
      builder: (
        BuildContext context,
        AsyncSnapshot<List<ConnectivityResult>> data,
      ) {
        return Container(
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            color: _getColor(data.data)?.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
        );
      },
    );
  }

  Color? _getColor(List<ConnectivityResult>? data) {
    if (data == null) {
      return Colors.black;
    } else if (data.isEmpty) {
      return Colors.orange;
    } else {
      return null;
    }
  }
}
