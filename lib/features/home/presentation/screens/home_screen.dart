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
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text("Your Beloved Children",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: 92.h,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
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
                      children: [
                        Image.asset('assets/images/logo.png',
                            width: 113, height: 92),
                        const SizedBox(height: 8),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 22,
                              child: Image.asset('assets/images/logo.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8, bottom: 4),
                              child: Text(
                                "Nada Ahmed",
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const Text(
                              "Grade 5",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
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
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("UpComing Activities",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryColor,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 92.h,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
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
                    height: 113.h,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset('assets/images/logo.png',
                                width: 133.w, height: 61.h, fit: BoxFit.cover)),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.only(top: 8, bottom: 4),
                          child: Text(
                            "Coding Session",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const Text(
                          "25 May 2024",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 6,
                              color: Colors.white),
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
          ],
        ),
      ),
    );
  }
}
