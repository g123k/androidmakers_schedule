import 'dart:async';

import 'package:androidmakers_schedule/blocs/sessions_bloc.dart';
import 'package:androidmakers_schedule/models/conference.dart';
import 'package:androidmakers_schedule/models/session.dart';
import 'package:androidmakers_schedule/models/slot.dart';
import 'package:androidmakers_schedule/utils/date_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kotlin_scope_function/kotlin_scope_function.dart';

abstract class _CurrentSlotEvent {
  const _CurrentSlotEvent();
}

class _OnReloadCurrentSlot extends _CurrentSlotEvent {
  const _OnReloadCurrentSlot();
}

class CurrentSessionBloc extends Bloc<_CurrentSlotEvent, CurrentSessionState> {
  final List<Room> rooms;

  Conference? _currentConference;
  late StreamSubscription<SessionsState> _blocSubscription;
  late Timer _timer;

  CurrentSessionBloc(SessionsBloc sessionsBloc, this.rooms)
      : assert(rooms.isNotEmpty),
        super(const CurrentSessionState._init()) {
    on<_OnReloadCurrentSlot>(_onReloadCurrentSlot);
    _timer = Timer.periodic(const Duration(minutes: 1), (_) {
      add(const _OnReloadCurrentSlot());
    });

    _blocSubscription = sessionsBloc.stream.listen((SessionsState state) {
      if (state is LoadedSessionsState) {
        _currentConference = state.conference;
        add(const _OnReloadCurrentSlot());
      }
    });

    if (sessionsBloc.state is LoadedSessionsState) {
      _currentConference =
          (sessionsBloc.state as LoadedSessionsState).conference;
      add(const _OnReloadCurrentSlot());
    }
  }

  Future<void> _onReloadCurrentSlot(
    _OnReloadCurrentSlot event,
    Emitter<CurrentSessionState> emit,
  ) async {
    _currentConference?.let((Conference conference) {
      final (DateTime now, DateTime minToday, DateTime maxToday) =
          DateUtils.today;

      final Iterable<Slot> slots = conference.slotsForRooms(rooms);

      if (minToday.isBeforeDay(conference.days.first) ||
          now.isBefore(conference.slots.first.startDate)) {
        emit(
          CurrentSessionState(
            isFirstSlot: true,
            currentSlot: slots.first,
            nextSlot: slots.length > 1 ? slots.elementAt(1) : null,
          ),
        );
      } else if (maxToday.isAfterDay(conference.slots.last.startDate)) {
        emit(
          CurrentSessionState(
            currentSlot: slots.last,
            isLastSlot: true,
          ),
        );
      } else {
        final Iterable<Slot> todaySlots = slots.getSlotsForDate(now);
        final Iterable<Slot> upcomingSlots = todaySlots.where(
          (Slot slot) => now.isBefore(
            slot.startDate.add(
              const Duration(minutes: 10),
            ),
          ),
        );

        if (upcomingSlots.isNotEmpty) {
          emit(
            CurrentSessionState(
              isFirstSlot: todaySlots.first == upcomingSlots.first,
              isLastSlot: todaySlots.last == upcomingSlots.last,
              currentSlot: upcomingSlots.first,
              nextSlot:
                  upcomingSlots.length > 1 ? upcomingSlots.elementAt(1) : null,
            ),
          );
        } else if (todaySlots.isNotEmpty) {
          emit(
            CurrentSessionState(
              isFirstSlot: todaySlots.first == todaySlots.last,
              isLastSlot: todaySlots.first == todaySlots.last,
              currentSlot: todaySlots.last,
              nextSlot: null,
            ),
          );
        } else {
          emit(
            const CurrentSessionState._init(),
          );
        }
      }
    });
  }

  @override
  Future<void> close() {
    _timer.cancel();
    _blocSubscription.cancel();
    return super.close();
  }
}

class CurrentSessionState {
  final Slot? currentSlot;
  final Slot? nextSlot;
  final bool isFirstSlot;
  final bool isLastSlot;

  const CurrentSessionState({
    this.isFirstSlot = false,
    this.isLastSlot = false,
    this.currentSlot,
    this.nextSlot,
  });

  const CurrentSessionState._init()
      : currentSlot = null,
        nextSlot = null,
        isFirstSlot = false,
        isLastSlot = false;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentSessionState &&
          runtimeType == other.runtimeType &&
          currentSlot == other.currentSlot &&
          nextSlot == other.nextSlot &&
          isFirstSlot == other.isFirstSlot &&
          isLastSlot == other.isLastSlot;

  @override
  int get hashCode =>
      currentSlot.hashCode ^
      nextSlot.hashCode ^
      isFirstSlot.hashCode ^
      isLastSlot.hashCode;
}
