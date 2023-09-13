import 'package:educationapp/components/Button/main_button.dart';
import 'package:educationapp/components/Text/text_decoration.dart';
import 'package:educationapp/components/TextFormField/textformfield_decoration.dart';
import 'package:educationapp/utils/color/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Image(
                              image: AssetImage('assets/icon/eduLearn.png')),
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
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Sign In",
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
                    'Sign Up',
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
                    'The point of your journey together is here, start registering now',
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
                  decoration:
                      TextFormFieldDecoration(hintText: 'username').decorated(
                    15,
                    const Icon(Icons.person_outlined),
                    AppColor.btnSecond,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(
                        value: 'SATU',
                        child: Text('SATU'),
                      ),
                      DropdownMenuItem(
                        value: 'DUA',
                        child: Text('DUA'),
                      )
                    ],
                    onChanged: (value) {},
                    decoration: TextFormFieldDecoration(hintText: 'Education')
                        .decorated(15, const Icon(Icons.school_outlined),
                            AppColor.secondText),
                    isDense: true,
                    elevation: 1,
                    icon: const Icon(Icons.expand_more_outlined),
                    borderRadius: BorderRadius.circular(15),
                    value: 'SATU',
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                TextFormField(
                  decoration:
                      TextFormFieldDecoration(hintText: 'Age').decorated(
                    15,
                    const Icon(Icons.calendar_today_outlined),
                    AppColor.btnSecond,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(),
                  enableInteractiveSelection: false,
                ),
                SizedBox(
                  height: 24.h,
                ),
                TextFormField(
                  decoration:
                      TextFormFieldDecoration(hintText: "Email").decorated(
                    15,
                    const Icon(Icons.email_outlined),
                    AppColor.btnSecond,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                TextFormField(
                  decoration: TextFormFieldDecoration(hintText: 'Phone Number')
                      .decorated(
                    15,
                    const Icon(Icons.phone_outlined),
                    AppColor.btnSecond,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                TextFormField(
                  decoration:
                      TextFormFieldDecoration(hintText: 'Password').decorated(
                    15,
                    const Icon(Icons.lock_outlined),
                    AppColor.btnSecond,
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                RichText(
                  text: const TextSpan(
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
                ),
                SizedBox(
                  height: 24.h,
                ),
                MainButton(
                  onTap: () {
                    print('Sign Up');
                  },
                  buttonColor: AppColor.btnMain,
                  buttonLabel: 'Create an account',
                  fullwidth: true,
                  labelColor: AppColor.mainWhite,
                  labelFontSize: 16.sp,
                  labelFontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
