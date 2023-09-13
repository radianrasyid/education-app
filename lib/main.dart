import 'package:educationapp/pages/course_detail/ui/course_detail_screen.dart';
import 'package:educationapp/pages/main/bloc/main_bloc.dart';
import 'package:educationapp/pages/main/ui/main_screen.dart';
import 'package:educationapp/pages/on_boarding/ui/on_boarding_screen.dart';
import 'package:educationapp/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:educationapp/pages/sign_in/ui/sign_in_screen.dart';
import 'package:educationapp/pages/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignInBloc(),
        ),
        BlocProvider(
          create: (context) => MainBloc(),
        ),
      ],
      child: ScreenUtilInit(
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
                fontFamily: 'PlusJakarta'),
            home: const OnBoardingScreen(),
            routes: {
              '/onboarding': (context) => const OnBoardingScreen(),
              '/signin': (context) => const SignInScreen(),
              '/signup': (context) => const SignUpScreen(),
              '/main': (context) => const MainScreen(),
              '/course-detail': (context) => const CourseDetailScreen()
            },
          );
        },
      ),
    );
  }
}
