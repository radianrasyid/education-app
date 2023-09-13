part of 'main_bloc.dart';

@immutable
sealed class MainState {}

final class MainInitial extends MainState {}

class MainLoadingState extends MainState {}

class MainLoadedState extends MainState {
  int activeStep;
  List<Widget> widgetList = [];

  MainLoadedState({required this.activeStep, required this.widgetList});

  MainLoadedState copyWith({
    int? activeStep,
    List<Widget>? widgetList,
  }) {
    return MainLoadedState(
        activeStep: activeStep ?? this.activeStep,
        widgetList: widgetList ?? this.widgetList);
  }
}
