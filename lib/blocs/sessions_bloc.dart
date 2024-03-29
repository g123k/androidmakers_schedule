import 'package:androidmakers_schedule/api/confetti_api.dart';
import 'package:androidmakers_schedule/api/requests/__generated__/all_sessions.data.gql.dart';
import 'package:androidmakers_schedule/models/conference.dart';
import 'package:androidmakers_schedule/models/session.dart';
import 'package:androidmakers_schedule/models/slot.dart';
import 'package:androidmakers_schedule/utils/date_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class _SessionsEvent {}

class ReloadSessionsEvent extends _SessionsEvent {
  final bool force;

  ReloadSessionsEvent({this.force = false});
}

class SessionsBloc extends Bloc<_SessionsEvent, SessionsState> {
  final ConfettiAPI _api = ConfettiAPI();

  SessionsBloc() : super(LoadingSessionsState._initial()) {
    on<ReloadSessionsEvent>(_onReloadSessions);
  }

  Future<void> _onReloadSessions(
    _SessionsEvent event,
    Emitter<SessionsState> emit,
  ) async {
    emit(LoadingSessionsState._(state));
    final Iterable<GAllSessionsData_sessions_nodes> data =
        await _api.getSessions(
      forceReload: (event as ReloadSessionsEvent).force,
    );

    final List<Session> sessions = <Session>[];
    final Map<DateTime, List<Session>> tmpSlots = <DateTime, List<Session>>{};

    for (final GAllSessionsData_sessions_nodes node in data) {
      final Session session = Session.fromAPI(node);

      if (tmpSlots[session.startDate] == null) {
        tmpSlots[session.startDate] = <Session>[session];
      } else {
        tmpSlots[session.startDate]!.add(session);
      }
    }

    final Iterable<DateTime> timeSlots = tmpSlots.keys.toList(growable: false)
      ..sort();

    final List<Slot> slots = <Slot>[];
    final Set<DateTime> dates = <DateTime>{};
    for (final DateTime startTime in timeSlots) {
      final List<Session> sessions = tmpSlots[startTime]!;
      slots.add(
        Slot(startTime, sessions.first.endDate, sessions),
      );

      final DateTime day = startTime.asDay;
      if (!dates.contains(day)) {
        dates.add(day);
      }
    }

    final List<DateTime> days = dates.toList(growable: false)..sort();

    // Remove incorrect slots
    final DateTime today = DateTime.now();
    final DateTime minFirstDay = slots.first.startDate.getMinValue();
    final DateTime maxFirstDay = slots.first.startDate.getMaxValue();
    final DateTime minLastDay = slots.last.startDate.getMinValue();
    final DateTime maxLastDay = slots.last.startDate.getMaxValue();

    // Before first day
    if (today.isBefore(minFirstDay)) {
      slots.removeWhere((Slot slot) => slot.startDate.isAfter(maxFirstDay));
    }
    // After last day
    else if (today.isAfter(maxLastDay)) {
      slots.removeWhere((Slot slot) => slot.startDate.isBefore(minLastDay));
    } else {
      for (final DateTime date in days) {
        if (date.isSameDay(today)) {
          final DateTime minDay = date.getMinValue();
          final DateTime maxDay = date.getMaxValue();
          slots.removeWhere(
            (Slot slot) =>
                slot.startDate.isBefore(minDay) || slot.endDate.isAfter(maxDay),
          );
          break;
        }
      }
    }

    print(slots.length);

    emit(
      LoadedSessionsState._(Conference.fromSlots(slots, days)),
    );
  }
}

sealed class SessionsState {
  final Conference? _conference;

  SessionsState._(SessionsState? state) : _conference = state?._conference;

  SessionsState._withConference(this._conference);
}

class LoadingSessionsState extends SessionsState {
  LoadingSessionsState._(super.state) : super._();

  LoadingSessionsState._initial() : super._(null);

  bool get isFirstLoading => _conference == null;

  List<Slot>? get slots => _conference?.slots;
}

class LoadedSessionsState extends SessionsState {
  LoadedSessionsState._(Conference super.conference) : super._withConference();

  DateTime get startDate => _conference!.startDate;

  DateTime get endDate => _conference!.endDate;

  List<Slot> get slots => _conference!.slots;
}

class ErrorLoadingSessionsState extends SessionsState {
  final dynamic exception;

  ErrorLoadingSessionsState._(
    super.state,
    this.exception,
  ) : super._();

  List<Slot>? get slots => _conference?.slots;
}
