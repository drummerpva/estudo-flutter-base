import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleStateInitial()) {
    on<ExampleFindNameEvent>(_findNames);
    on<ExampleRemoveNameEvent>(_removeName);
    on<ExampleAddNameEvent>(_addName);
  }

  FutureOr<void> _removeName(
    ExampleRemoveNameEvent event,
    Emitter<ExampleState> emit,
  ) {
    final stateExample = state;
    if (stateExample is ExampleStateData) {
      // (state as ExampleStateData)
      final names = [...stateExample.name];
      names.retainWhere((element) => element != event.name);
      emit(ExampleStateData(name: names));
    }
  }

  FutureOr<void> _addName(
    ExampleAddNameEvent event,
    Emitter<ExampleState> emit,
  ) {
    final stateExample = state;
    if (stateExample is ExampleStateData) {
      final names = [...stateExample.name];
      names.add(event.name);
      emit(ExampleStateData(name: names));
    }
  }

  FutureOr<void> _findNames(
      ExampleFindNameEvent event, Emitter<ExampleState> emit) async {
    final names = ['Douglas Poma', 'Elaine Regina', 'Osvaldo Poma'];
    await Future.delayed(const Duration(seconds: 2));
    emit(ExampleStateData(name: names));
  }
}
