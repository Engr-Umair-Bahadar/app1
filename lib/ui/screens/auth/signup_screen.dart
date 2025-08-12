import 'package:flutter/material.dart';
import 'package:myapp/core/costant/colors.dart';
import 'package:myapp/core/costant/strings.dart';
import 'package:myapp/core/costant/text_style.dart';
import 'package:myapp/ui/custom_widget/buttons/continue_with_google.dart';
import 'package:myapp/ui/custom_widget/buttons/login_button.dart';
import 'package:myapp/ui/screens/auth/login_screen.dart';
//import 'package:myapp/core/costant/strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //************APP BAR**********//
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
      //*****************BODY START************//
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
                    style: style14.copyWith(
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Input username",
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
                      child: Image.asset(
                        "$iconAssets/person_icon.png",
                        height: 17,
                        width: 17,
                      ),
                    ),
                    helperText: "username helper",
                    labelText: "usename label",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    "Email",
                    style: style14.copyWith(
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Input Email",
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
                      child: Image.asset(
                        "$iconAssets/email-icon.png",
                        height: 17,
                        width: 17,
                      ),
                    ),
                    helperText: "password helper",
                    labelText: "password label",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    "Password",
                    style: style14.copyWith(
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Input password",
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
                      child: Image.asset(
                        "$iconAssets/key_icon.png",
                        height: 17,
                        width: 17,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "$iconAssets/eye_icon.png",
                        height: 19,
                        width: 19,
                      ),
                    ),
                    helperText: "password helper",
                    labelText: "password label",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "$iconAssets/checkbox-icon.png",
                            height: 17,
                            width: 17,
                          ),
                          Text(
                            "I agree to the ",
                            style: style14.copyWith(
                              fontWeight: FontWeight.w400,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Terms & Conditions ",
                            style: style14B.copyWith(
                              fontWeight: FontWeight.w700,
                              color: blueColor,
                            ),
                          ),
                          Text(
                            "and ",
                            style: style14B.copyWith(
                              fontWeight: FontWeight.w700,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Privacy Policy",
                            style: style14B.copyWith(
                              fontWeight: FontWeight.w700,
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                LoginButton(
                  text: "Register",
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
                        child: Text("   Or create with  "),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(28, 12, 28, 12),
                          child: Image.asset(
                            "$iconAssets/right-line.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ContinueWithGoogle(
                  text: " Register with Google",
                  textColor: greyColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 85.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: style14.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Login",
                              style: style14B.copyWith(
                                fontWeight: FontWeight.w700,
                                color: blueColor,
                              ),
                            ),
                          ),
                        ],
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
          ],
        ),
      ),
    );
  }
}
