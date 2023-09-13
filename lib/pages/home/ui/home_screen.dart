import 'package:educationapp/components/Button/main_button.dart';
import 'package:educationapp/components/Text/text_decoration.dart';
import 'package:educationapp/components/TextFormField/textformfield_decoration.dart';
import 'package:educationapp/utils/color/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> exploreCategories = [
    {"icon": Icons.design_services_outlined, "label": 'Design', 'onTap': () {}},
    {"icon": Icons.code_outlined, "label": 'Programmer', 'onTap': () {}},
    {"icon": Icons.money_outlined, "label": 'Finance', 'onTap': () {}},
    {"icon": Icons.settings_outlined, "label": 'Soft Skill', 'onTap': () {}},
    {
      "icon": Icons.credit_card_outlined,
      "label": 'Accountancy',
      'onTap': () {}
    },
    {
      "icon": Icons.data_usage_outlined,
      "label": 'Data Science',
      'onTap': () {}
    },
    {"icon": Icons.language_outlined, "label": 'Language', 'onTap': () {}},
    {
      "icon": Icons.real_estate_agent_outlined,
      "label": 'Marketing',
      'onTap': () {}
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220.h,
              width: 412.w,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                gradient: LinearGradient(
                  colors: [AppColor.btnMain.withOpacity(0.4), AppColor.btnMain],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Image(
                                image: AssetImage('assets/icon/eduLearn.png')),
                            SizedBox(
                              width: 13.85.w,
                            ),
                            Text(
                              'EduLearn',
                              style: TextDecoration().MainTextDecoration(
                                  AppColor.mainWhite, FontWeight.bold, 25.sp),
                            )
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_outlined,
                          color: AppColor.mainWhite,
                        ),
                        style: IconButton.styleFrom(
                          backgroundColor: AppColor.mainWhite.withOpacity(0.3),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Adeeva',
                          style: TextDecoration().MainTextDecoration(
                              AppColor.mainWhite, FontWeight.bold, 18.sp),
                        ),
                        Text(
                          'Find the class or field you like here',
                          style: TextDecoration().MainTextDecoration(
                              AppColor.mainWhite, FontWeight.w500, 14.sp),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      decoration:
                          TextFormFieldDecoration(hintText: 'Find Class')
                              .decorationCustomized(
                                  borderRadius: 15,
                                  prefixIcon: Icon(Icons.search_outlined),
                                  suffixIcon: Icon(Icons.mic_outlined),
                                  suffixTap: () {
                                    print('suffixTapped');
                                  }),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Expore Categories',
                style: TextDecoration().MainTextDecoration(
                    AppColor.eduLearn, FontWeight.bold, 14.sp),
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Container(
              height: 220.h,
              child: GridView.count(
                primary: false,
                crossAxisCount: 4,
                childAspectRatio: 0.75,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.w,
                children: exploreCategories.map((e) {
                  return InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap: e['onTap'],
                    child: Column(
                      children: [
                        Container(
                          height: 60.w,
                          width: 60.w,
                          decoration: BoxDecoration(
                              color: AppColor.btnMain.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Icon(
                              e['icon'],
                              color: AppColor.btnMain,
                              size: 30.w,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.w,
                        ),
                        Text(
                          e['label'],
                          style: TextDecoration().MainTextDecoration(
                              AppColor.eduLearn, FontWeight.bold, 10.sp),
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Roadmap you might like',
                  style: TextDecoration().MainTextDecoration(
                      AppColor.eduLearn, FontWeight.bold, 14.sp),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'See more',
                    style: TextDecoration().MainTextDecoration(
                        AppColor.btnMain, FontWeight.bold, 14.sp),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 28.w,
            ),
            Container(
              height: 220.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: List.generate(8, (index) {
                  return Container(
                    width: 176.w,
                    margin: EdgeInsets.only(right: 16.w),
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: AppColor.btnSecondOutline,
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage('assets/icon/eduLearn.png')),
                        SizedBox(
                          height: 24.h,
                        ),
                        Text(
                          'Mastring UI/UX Design',
                          style: TextDecoration().MainTextDecoration(
                              AppColor.eduLearn, FontWeight.bold, 13.sp),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColor.btnSecond.withOpacity(0.3)),
                                width: 68.w,
                                height: 32.h,
                                child: Center(
                                  child: Text(
                                    '12 Class',
                                    style: TextDecoration().MainTextDecoration(
                                        AppColor.secondText,
                                        FontWeight.bold,
                                        10.sp),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColor.btnSecond.withOpacity(0.3)),
                                width: 68.w,
                                height: 32.h,
                                child: Center(
                                  child: Text(
                                    '3 Level',
                                    style: TextDecoration().MainTextDecoration(
                                        AppColor.secondText,
                                        FontWeight.bold,
                                        10.sp),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          width: 247.w,
                          child: MainButton(
                              onTap: () {
                                Navigator.pushNamed(context, '/course-detail');
                              },
                              buttonColor: AppColor.btnMain,
                              buttonLabel: 'Start Journey',
                              labelColor: AppColor.mainWhite,
                              labelFontSize: 10.sp,
                              labelFontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Freemium class',
                  style: TextDecoration().MainTextDecoration(
                      AppColor.eduLearn, FontWeight.bold, 14.sp),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'See more',
                    style: TextDecoration().MainTextDecoration(
                        AppColor.btnMain, FontWeight.bold, 14.sp),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              height: 196.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: List.generate(8, (index) {
                  return Container(
                    width: 176.w,
                    margin: EdgeInsets.only(right: 16.w),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: AppColor.btnSecondOutline,
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70.w,
                          width: 156.w,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image(
                            image:
                                AssetImage('assets/img/digitalMarketing.png'),
                            fit: BoxFit.cover,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Digital Marketing for beginners',
                          style: TextDecoration().MainTextDecoration(
                              AppColor.eduLearn, FontWeight.bold, 13.sp),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Free',
                          style: TextDecoration().MainTextDecoration(
                              AppColor.eduLearn, FontWeight.normal, 10.sp),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              unratedColor: Colors.amber.withAlpha(50),
                              itemCount: 5,
                              itemSize: 13.8.w,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 0.5),
                              itemBuilder: (context, _) => Icon(
                                Icons.star_rounded,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                              updateOnDrag: true,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text('(1,125)'),
                          ],
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Class',
                  style: TextDecoration().MainTextDecoration(
                      AppColor.eduLearn, FontWeight.bold, 14.sp),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'See more',
                    style: TextDecoration().MainTextDecoration(
                        AppColor.btnMain, FontWeight.bold, 14.sp),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              height: 196.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: List.generate(8, (index) {
                  return Container(
                    width: 176.w,
                    margin: EdgeInsets.only(right: 16.w),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: AppColor.btnSecondOutline,
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70.w,
                          width: 156.w,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image(
                            image:
                                AssetImage('assets/img/digitalMarketing.png'),
                            fit: BoxFit.cover,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Digital Marketing for beginners',
                          style: TextDecoration().MainTextDecoration(
                              AppColor.eduLearn, FontWeight.bold, 13.sp),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Free',
                          style: TextDecoration().MainTextDecoration(
                              AppColor.eduLearn, FontWeight.normal, 10.sp),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              unratedColor: Colors.amber.withAlpha(50),
                              itemCount: 5,
                              itemSize: 13.8.w,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 0.1),
                              itemBuilder: (context, _) => Icon(
                                Icons.star_rounded,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                              updateOnDrag: true,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text('(1,125)'),
                          ],
                        )
                      ],
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
