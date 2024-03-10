import 'package:blog_application/core/secrets/app_secrets.dart';
import 'package:blog_application/core/theme/theme.dart';
import 'package:blog_application/features/auth/presentation/pages/login_page.dart';
import 'package:blog_application/features/auth/presentation/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = await Supabase.initialize(
      anonKey: AppSecrets.supabaseAnonKey, url: AppSecrets.supabaseUrl);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Blog Application',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.darkThemeMode,
          home: const LogInPage(),
        );
      },
    );
  }
}
