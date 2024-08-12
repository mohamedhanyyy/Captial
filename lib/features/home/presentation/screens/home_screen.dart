import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/resources/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text("Your Beloved Children",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: 92.h,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.w),
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: AppColors.greyColor,
                            blurRadius: 2,
                          )
                        ]),
                    width: 202.w,
                    height: 92.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Image.asset('assets/images/logo.png',
                        //     width: 113, height: 92),
                        // const SizedBox(height: 8),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8.h, bottom: 8.h),
                              child: CircleAvatar(
                                radius: 22,
                                backgroundImage: NetworkImage(
                                    "https://images.inc.com/uploaded_files/image/1024x576/getty_481292845_77896.jpg"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.h, bottom: 4.h),
                              child: Text(
                                "Nada Ahmed",
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Text(
                              "Grade 5",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10.sp,
                                color: AppColors.whiteColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming Activities",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w500)),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryColor,
                        fontSize: 12.sp,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 133.h,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.w),
                    decoration: BoxDecoration(
                        color: AppColors.deepYellow,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: AppColors.greyColor,
                            blurRadius: 2,
                          )
                        ]),
                    width: 133.w,
                    height: 133.h,
                    child: Column(children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy6uB3rb_w3DrIG5xvbHg9wY-G3Y_6aDZFJg&s',
                              width: 133.w,
                              height: 61.h,
                              fit: BoxFit.cover)),
                      Padding(
                        padding: EdgeInsets.only(top: 8.h, bottom: 4.h),
                        child: Text(
                          "Coding Session",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "25 May 2024",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 8.sp,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10.h),
                    ]),
                  );
                },
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
