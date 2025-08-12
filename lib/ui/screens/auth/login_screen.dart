// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:myapp/core/costant/auth_field_decoration.dart';
import 'package:myapp/core/costant/colors.dart';
import 'package:myapp/core/costant/strings.dart';
import 'package:myapp/core/costant/text_style.dart';
import 'package:myapp/ui/custom_widget/buttons/continue_with_google.dart';
import 'package:myapp/ui/custom_widget/buttons/login_button.dart';
import 'package:myapp/ui/screens/auth/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSelect = false;
  onClick() {
    setState(() {
      isSelect = !isSelect;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///
      ///APP BAR
      ///
      appBar: AppBar(
        leading: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: whiteColor,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 5,
                spreadRadius: -1,
                color: Color(0xff7F5F80),
              ),
            ],
          ),
          child: Image.asset("$iconAssets/back_icon.png"),
        ),
      ),

      ///
      ///Start BODY
      ///
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Center(
              child: Image.asset(
                "$staticAssets/app_logo.png",
                color: primaryColor,
                width: 243,
                height: 62,
              ),
            ),
            SizedBox(height: 40),

            Text(
              "Welcome Back 👋",
              style: style24B.copyWith(fontWeight: FontWeight.w700),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    "Username",
                    style: style14.copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: authFieldDecoration.copyWith(
                    hintText: "Enter Your Username",
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
                      child: Image.asset(
                        "$iconAssets/person_icon.png",
                        height: 17,
                        width: 17,
                      ),
                    ),

                    labelText: "usename label",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    "Password",
                    style: style14.copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  obscureText: isSelect ? false : true,
                  decoration: authFieldDecoration.copyWith(
                    hintText: "Enter Your Password",
                    labelText: "Password",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        onClick();
                      },
                      child: isSelect
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                    prefixIcon: Icon(Icons.key_outlined),
                  ),
                ),
              ],
            ),

            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style: style12Sb.copyWith(color: blueColor),
              ),
            ),
            LoginButton(
              text: "Login",
              textColor: whiteColor,
              boxColor: blackColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      "$iconAssets/left-line.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text("  Or continue with  "),
                  ),
                  Expanded(
                    child: Image.asset(
                      "$iconAssets/right-line.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            ContinueWithGoogle(
              text: "Continue with Google",
              textColor: greyColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text(
                          "Don't have an account?",
                          style: style14.copyWith(fontWeight: FontWeight.w400),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Register",
                            style: style14B.copyWith(
                              fontWeight: FontWeight.w700,
                              color: blueColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Center(
                      child: Image.asset(
                        "$iconAssets/home_indicator.png",
                        height: 5,
                        width: 134,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
