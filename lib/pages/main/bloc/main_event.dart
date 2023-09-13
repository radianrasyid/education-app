part of 'main_bloc.dart';

@immutable
sealed class MainEvent {}

class MainInitialEvent extends MainEvent {}

class MainActiveStepChangeEvent extends MainEvent {
  final int inputActiveStep;

  MainActiveStepChangeEvent({required this.inputActiveStep});
}

class MainWidgetListChangeEvent extends MainEvent {
  final List<Widget> inputListWidget;

  MainWidgetListChangeEvent({required this.inputListWidget});
}
