import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'trip_screen_event.dart';
part 'trip_screen_state.dart';

class TripScreenBloc extends Bloc<TripScreenEvent, TripScreenState> {
  TripScreenBloc() : super(TripScreenInitial());

  @override
  Stream<TripScreenState> mapEventToState(
    TripScreenEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
