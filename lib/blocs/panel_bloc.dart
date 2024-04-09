import 'dart:async';

import 'package:androidmakers_schedule/api/panel/panel_api.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class _PanelEvent {
  const _PanelEvent();
}

class ReloadPanelContent extends _PanelEvent {
  const ReloadPanelContent();
}

class PanelBloc extends Bloc<_PanelEvent, PanelState> {
  late Timer _timer;

  PanelBloc() : super(const PanelState._initial()) {
    on<ReloadPanelContent>(_onReloadPanel);

    _timer = Timer.periodic(const Duration(minutes: 5), (_) {
      add(const ReloadPanelContent());
    });
  }

  Future<void> _onReloadPanel(
    ReloadPanelContent event,
    Emitter<PanelState> emit,
  ) async {
    try {
      final List<PanelMessage> messages =
          (await PanelAPI().getMessages()).toList();

      messages.retainWhere(
        (PanelMessage msg) =>
            (msg.startDate == null && msg.endDate == null) ||
            (msg.startDate != null &&
                msg.startDate!.isBefore(DateTime.now())) ||
            (msg.endDate != null && msg.endDate!.isAfter(DateTime.now())),
      );

      emit(PanelState._(messages));
    } catch (e) {
      if (kDebugMode) {
        print('Error loading panel content $e');
      }
    }
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }
}

class PanelState {
  final Iterable<PanelMessage>? messages;

  const PanelState._(this.messages);

  const PanelState._initial() : messages = null;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PanelState &&
          runtimeType == other.runtimeType &&
          messages == other.messages;

  @override
  int get hashCode => messages.hashCode;
}
