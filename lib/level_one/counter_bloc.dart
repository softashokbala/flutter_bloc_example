import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/level_one/counter_event.dart';


class CounterBLoc extends Bloc<CounterEvent, int> {
  CounterBLoc() : super(0) {
    on<IncrementEvent>((event, emit) {
      emit(state + 1);
    });

    on<DecrementEvent>((event, emit) {
      emit(state - 1);
    });
  }
}
