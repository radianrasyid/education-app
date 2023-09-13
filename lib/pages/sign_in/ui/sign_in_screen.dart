import 'package:educationapp/components/Button/main_button.dart';
import 'package:educationapp/components/Text/text_decoration.dart';
import 'package:educationapp/components/TextFormField/textformfield_decoration.dart';
import 'package:educationapp/utils/color/color_lib.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image(image: AssetImage('assets/icon/eduLearn.png')),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'EduLearn',
                            style: TextStyle(
                                color: AppColor.eduLearn,
                                fontSize: 23.sp,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          "Sign Up",
                          style: TextDecoration().MainTextDecoration(
                            AppColor.btnMain,
                            FontWeight.bold,
                            16.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Center(
                  child: Text(
                    'Welcome Back!',
                    style: TextDecoration().MainTextDecoration(
                      AppColor.btnMain,
                      FontWeight.bold,
                      23.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Center(
                  child: Text(
                    'Nice to see you back, you can login and continue your learning progress',
                    textAlign: TextAlign.center,
                    style: TextDecoration().MainTextDecoration(
                      AppColor.secondText,
                      FontWeight.normal,
                      14.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                TextFormField(
                  decoration: TextFormFieldDecoration().decorated(
                    15,
                    Icon(Icons.email_outlined),
                    AppColor.btnSecond,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                TextFormField(
                  decoration: TextFormFieldDecoration().decorated(
                    15,
                    Icon(Icons.lock_outlined),
                    AppColor.btnSecond,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Forgot Password?',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('forgot password');
                              },
                            style: TextDecoration().MainTextDecoration(
                                AppColor.mainBlack, FontWeight.w500, 13.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                MainButton(
                  onTap: () {
                    print('login');
                    Navigator.pushNamed(context, '/main');
                  },
                  buttonColor: AppColor.btnMain,
                  buttonLabel: 'Log In',
                  fullwidth: true,
                  labelColor: AppColor.mainWhite,
                  labelFontSize: 16.sp,
                  labelFontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 35.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Divider(
                      color: AppColor.btnSecondOutline,
                      thickness: 1,
                    )),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                      'Or',
                      style: TextStyle(color: AppColor.secondText),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Expanded(
                        child: Divider(
                      color: AppColor.btnSecondOutline,
                      thickness: 1,
                    )),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sign in with'),
                        SizedBox(
                          width: 10.w,
                        ),
                        Image(image: AssetImage('assets/icon/facebook.png'))
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: AppColor.btnSecondOutline),
                      ),
                      backgroundColor: AppColor.mainWhite,
                      elevation: 0,
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sign in with'),
                        SizedBox(
                          width: 10.w,
                        ),
                        Image(image: AssetImage('assets/icon/google.png'))
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: AppColor.btnSecondOutline),
                      ),
                      backgroundColor: AppColor.mainWhite,
                      elevation: 0,
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'By creating an account, you agree to ',
                          style: TextStyle(color: AppColor.secondText)),
                      TextSpan(
                          text: "EduLearn's Terms & Conditions ",
                          style: TextStyle(color: AppColor.btnMain)),
                      TextSpan(
                          text: "and ",
                          style: TextStyle(color: AppColor.secondText)),
                      TextSpan(
                          text: "Privacy Policy ",
                          style: TextStyle(color: AppColor.btnMain)),
                    ],
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
