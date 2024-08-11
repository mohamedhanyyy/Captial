import 'package:capital_school/shared/widgets/custom_button.dart';
import 'package:capital_school/shared/widgets/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/resources/colors.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 150.h,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(24.r))),
              child: Image.asset('assets/images/logo.png'),
            ),
            Container(
              padding: EdgeInsets.all(24.w),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(24.r))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign in',
                    style:
                        TextStyle(fontSize: 24.sp, color: AppColors.blackColor),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    'Email',
                    style:
                        TextStyle(fontSize: 14.sp, color: AppColors.blackColor),
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: customInputDecoration(hintText: 'Email'),
                  ),
        
                  SizedBox(height: 18.h),
                  Text(
                    'Password',
                    style:
                        TextStyle(fontSize: 14.sp, color: AppColors.blackColor),
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: customInputDecoration(hintText: 'Please enter your password'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:   EdgeInsets.only(bottom: 47.h),
        child: CustomElevatedButton(onTap: (){}, buttonText: 'Sign in',
        ),
      ),
    );
  }
}
