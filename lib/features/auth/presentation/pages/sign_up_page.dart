import 'package:blog_application/core/theme/app_pallete.dart';
import 'package:blog_application/features/auth/presentation/pages/login_page.dart';
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
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  'Sign Up.',
                  style: TextStyle(fontSize: 50.h, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30.h,
                ),
                AuthField(hintText: 'Name', controller: nameController),
                SizedBox(
                  height: 15.h,
                ),
                AuthField(
                  hintText: 'Email',
                  controller: emailController,
                ),
                SizedBox(
                  height: 15.h,
                ),
                AuthField(
                  hintText: 'Password',
                  controller: passwordController,
                  obscureText: true,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const AuthGradientButton(buttonText: 'Sign Up'),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LogInPage()));
                  },
                  child: RichText(
                      text: TextSpan(
                          text: 'Already have an account? ',
                          style: Theme.of(context).textTheme.titleMedium,
                          children: [
                        TextSpan(
                            text: 'Sign In',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: AppPallete.gradient2,
                                  fontWeight: FontWeight.bold,
                                ))
                      ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
