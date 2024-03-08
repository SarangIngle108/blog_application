import 'package:blog_application/core/theme/app_pallete.dart';
import 'package:blog_application/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_application/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sign Up.',
                style: TextStyle(fontSize: 50.h, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.h,
              ),
              const AuthField(hintText: 'Name'),
              SizedBox(
                height: 15.h,
              ),
              AuthField(hintText: 'Email'),
              SizedBox(
                height: 15.h,
              ),
              AuthField(hintText: 'Password'),
              SizedBox(
                height: 20.h,
              ),
              AuthGradientButton(),
              SizedBox(
                height: 20.h,
              ),
              RichText(
                  text: TextSpan(
                      text: 'Don\'t have an account? ',
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                    TextSpan(
                        text: 'Sign In',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: AppPallete.gradient2,
                                  fontWeight: FontWeight.bold,
                                ))
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
