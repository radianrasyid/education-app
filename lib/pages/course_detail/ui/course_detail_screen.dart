import 'package:educationapp/components/Text/text_decoration.dart';
import 'package:educationapp/utils/color/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class CourseDetailScreen extends StatefulWidget {
  const CourseDetailScreen({super.key});

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
        Uri.parse('https://youtu.be/enR58PYHaWw?si=NhRE62wUMgQh3HQc'))
      ..initialize().then((value) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image(image: AssetImage('assets/icon/eduLearn.png')),
              SizedBox(
                width: 13.w,
              ),
              Text(
                'EduLearn',
                style: TextDecoration().MainTextDecoration(
                    AppColor.eduLearn, FontWeight.bold, 25.sp),
              )
            ],
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mastering UI/UX Design',
              style: TextDecoration().MainTextDecoration(
                  AppColor.eduLearn, FontWeight.bold, 25.sp),
            ),
            SizedBox(
              height: 25.h,
            ),
            Text(
              'World application history',
              style: TextDecoration().MainTextDecoration(
                  AppColor.eduLearn, FontWeight.bold, 20.sp),
            ),
            SizedBox(
              height: 27.h,
            ),
            Text(
              'Free',
              style: TextDecoration().MainTextDecoration(
                  AppColor.eduLearn, FontWeight.w500, 15.sp),
            ),
            SizedBox(
              height: 2.h,
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
                  itemSize: 15.8.w,
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
            ),
            SizedBox(
              height: 35.h,
            ),
            Text('Preview Class'),
            Center(
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container(),
            )
          ],
        ),
      ),
    );
  }
}
