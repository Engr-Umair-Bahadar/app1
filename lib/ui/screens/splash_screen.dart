import 'package:flutter/material.dart';
import 'package:myapp/core/costant/colors.dart';
import 'package:myapp/core/costant/strings.dart';
import 'package:myapp/ui/screens/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Image.asset(
          "$staticAssets/app_logo.png",
          height: 77,
          width: 304,
        ),
      ),
    );
  }
}
