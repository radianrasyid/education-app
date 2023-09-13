import 'package:educationapp/components/Button/bottom_nav_item.dart';
import 'package:educationapp/pages/main/bloc/main_bloc.dart';
import 'package:educationapp/utils/color/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    print('masuk kesini dulu');
    mainBloc.add(MainInitialEvent());
    super.initState();
  }

  final MainBloc mainBloc = MainBloc();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      bloc: mainBloc,
      builder: (context, state) {
        switch (state.runtimeType) {
          case MainLoadingState:
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case MainLoadedState:
            final mainLoadedState = state as MainLoadedState;
            return Scaffold(
              body: SafeArea(
                child: mainLoadedState.widgetList
                    .elementAt(mainLoadedState.activeStep),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              floatingActionButton: Container(
                height: 60.h,
                width: MediaQuery.of(context).size.width - 20.w,
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColor.mainWhite,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          color: AppColor.secondText.withOpacity(0.2),
                          offset: Offset(0, 3))
                    ]),
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BottomNavItem(
                        image: 'assets/icon/homeBottom.png',
                        label: 'Home',
                        bloc: mainBloc,
                        blocEvent:
                            MainActiveStepChangeEvent(inputActiveStep: 0),
                        isActive:
                            mainLoadedState.activeStep == 0 ? true : false,
                      ),
                      BottomNavItem(
                        image: 'assets/icon/eventBottom.png',
                        label: 'Event',
                        bloc: mainBloc,
                        blocEvent:
                            MainActiveStepChangeEvent(inputActiveStep: 1),
                        isActive:
                            mainLoadedState.activeStep == 1 ? true : false,
                      ),
                      BottomNavItem(
                        image: 'assets/icon/classBottom.png',
                        label: 'Course',
                        bloc: mainBloc,
                        blocEvent:
                            MainActiveStepChangeEvent(inputActiveStep: 2),
                        isActive:
                            mainLoadedState.activeStep == 2 ? true : false,
                      ),
                      BottomNavItem(
                        image: 'assets/icon/profileBottom.png',
                        label: 'Profile',
                        bloc: mainBloc,
                        blocEvent:
                            MainActiveStepChangeEvent(inputActiveStep: 3),
                        isActive:
                            mainLoadedState.activeStep == 3 ? true : false,
                      ),
                    ],
                  ),
                ),
              ),
            );
          default:
            return Scaffold(
              body: Center(
                child: InkWell(
                  onTap: () {
                    print(state.runtimeType);
                  },
                  child: Text('something went wrong'),
                ),
              ),
            );
        }
      },
    );
  }
}
