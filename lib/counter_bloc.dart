import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncrementedEvent>((event, emit) {
      emit(CounterState(counter: state.counter + 1));
    });

    on<CounterDecrementEvent>((event, emit) {
      emit(CounterState(counter: state.counter + -1));
    });

    on<CounterResetEvent>((event, emit) {
      emit(CounterState(counter: state.counter = 0));
    });
  }
}
