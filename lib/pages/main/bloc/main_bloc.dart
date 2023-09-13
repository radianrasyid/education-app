import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:educationapp/pages/course/ui/course_screen.dart';
import 'package:educationapp/pages/event/ui/event_screen.dart';
import 'package:educationapp/pages/home/ui/home_screen.dart';
import 'package:educationapp/pages/profile/ui/profile_screen.dart';
import 'package:flutter/material.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<MainInitialEvent>(mainInitialEvent);
    on<MainActiveStepChangeEvent>(mainActiveStepChangeEvent);
    on<MainWidgetListChangeEvent>(mainWidgetListChangeEvent);
  }

  FutureOr<void> mainActiveStepChangeEvent(
      MainActiveStepChangeEvent event, Emitter<MainState> emit) {
    final currentState = state as MainLoadedState;

    emit(currentState.copyWith(activeStep: event.inputActiveStep));
  }

  FutureOr<void> mainWidgetListChangeEvent(
      MainWidgetListChangeEvent event, Emitter<MainState> emit) {
    final currentState = state as MainLoadedState;

    emit(currentState.copyWith(widgetList: event.inputListWidget));
  }

  FutureOr<void> mainInitialEvent(
      MainInitialEvent event, Emitter<MainState> emit) async {
    emit(MainLoadingState());
    await Future.delayed(Duration(milliseconds: 3000));
    emit(MainLoadedState(activeStep: 0, widgetList: const [
      HomeScreen(),
      EventScreen(),
      CourseScreen(),
      ProfileScreen()
    ]));
  }
}
