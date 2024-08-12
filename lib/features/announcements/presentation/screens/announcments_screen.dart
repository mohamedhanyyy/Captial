import 'package:flutter/material.dart';

import '../../../../shared/resources/colors.dart';

class AnnouncementsScreen extends StatefulWidget {
  const AnnouncementsScreen({super.key});

  @override
  State<AnnouncementsScreen> createState() => AnnouncementsScreenState();
}

class AnnouncementsScreenState extends State<AnnouncementsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("News feed",
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
            ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            child: Image.asset('assets/images/logo.png'),
                            backgroundColor: AppColors.whiteColor,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Capital International Schools",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: AppColors.titleGrey),
                              ),
                              Text(
                                "2 hours ago",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8,
                                    color: AppColors.titleGrey),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Dear Parents, Sports Day is on May 10th from 9 AM - 2 PM. Join us for a day of fun and athletics!",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: AppColors.greyColor),
                      )
                    ],
                  ),
                );
              },
              itemCount: 5,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
            )
          ],
        ),
      ),
    );
  }
}
