import 'dart:async';

import 'package:androidmakers_schedule/api/panel/panel_api.dart';
import 'package:androidmakers_schedule/blocs/current_slot_bloc.dart';
import 'package:androidmakers_schedule/models/session.dart';
import 'package:androidmakers_schedule/utils/date_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class _PanelEvent {
  const _PanelEvent();
}

class ReloadPanelContent extends _PanelEvent {
  const ReloadPanelContent();
}

class PanelBloc extends Bloc<_PanelEvent, PanelState> {
  final CurrentSessionBloc sessionsBloc;
  late Timer _timer;
  late StreamSubscription<CurrentSessionState> _blocSubscription;

  PanelBloc(this.sessionsBloc) : super(const PanelState._initial()) {
    on<ReloadPanelContent>(_onReloadPanel);

    _timer = Timer.periodic(const Duration(minutes: 5), (_) {
      add(const ReloadPanelContent());
    });

    _blocSubscription = sessionsBloc.stream.listen((CurrentSessionState state) {
      add(const ReloadPanelContent());
    });
  }

  Future<void> _onReloadPanel(
    ReloadPanelContent event,
    Emitter<PanelState> emit,
  ) async {
    try {
      final List<PanelAPIMessage> apiMessages =
          (await PanelAPI().getMessages()).toList();

      final List<PanelMessage> messages = <PanelMessage>[];
      final DateTime now = DateUtils.today.$1;

      apiMessages.retainWhere(
        (PanelAPIMessage msg) =>
            (msg.startDate == null && msg.endDate == null) ||
            (msg.startDate != null && msg.startDate!.isBefore(now)) ||
            (msg.endDate != null && msg.endDate!.isAfter(now)),
      );

      messages.addAll(
        apiMessages
            .map((PanelAPIMessage msg) => TextPanelMessage._fromAPI(msg)),
      );

      final Session? session = sessionsBloc.state.currentSlot?.sessions.first;
      if (session != null &&
          now.isAfter(session.startDate.add(const Duration(hours: -1)))) {
        messages.insert(
          0,
          DevLoungeMessage(session),
        );
      }

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
    _blocSubscription.cancel();
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

sealed class PanelMessage {}

class TextPanelMessage extends PanelMessage {
  final String line1;
  final String? line2;
  final String? url;
  final String? image;
  final DateTime? startDate;
  final DateTime? endDate;

  TextPanelMessage._fromAPI(PanelAPIMessage msg)
      : line1 = msg.line1,
        line2 = msg.line2,
        url = msg.url,
        image = msg.image,
        startDate = msg.startDate,
        endDate = msg.endDate;
}

class DevLoungeMessage extends PanelMessage {
  final Session session;

  DevLoungeMessage(this.session);

  String get title => session.title;
}

enum PanelMessageType {
  text,
  officeHours,
}
