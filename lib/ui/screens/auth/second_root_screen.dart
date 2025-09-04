// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:myapp/core/costant/colors.dart';
import 'package:myapp/ui/home_screen.dart';
import 'package:myapp/ui/screens/auth/category_screen.dart';
import 'package:myapp/ui/screens/discount_screen.dart';

class RootCustomiseScreen extends StatefulWidget {
  const RootCustomiseScreen({super.key});

  @override
  State<RootCustomiseScreen> createState() => _RootCustomiseScreenState();
}

class _RootCustomiseScreenState extends State<RootCustomiseScreen> {
  int currentIndex = 0;
  onClick(value) {
    currentIndex = value;
  }

  List<Widget> screens = [CategoryScreen(), DiscountScreen(), HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: blackColor.withOpacity(0.25),
              offset: Offset(0, 3),
              blurRadius: 4,
              spreadRadius: 6,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Here we will call our function
            CustomBottomBar(
              onTap: () {
                setState(() {
                  onClick(0);
                });
              },
              currentIndex: currentIndex,
              imgPath: "assets/static_assets/home.png",
              selectedIndex: 0,
            ),

            CustomBottomBar(
              onTap: () {
                setState(() {
                  onClick(1);
                });
              },
              selectedIndex: 1,
              currentIndex: currentIndex,
              imgPath: "assets/static_assets/dashboard.png",
            ),
            CustomBottomBar(
              onTap: () {
                setState(() {
                  onClick(2);
                });
              },
              selectedIndex: 2,
              currentIndex: currentIndex,
              imgPath: "assets/static_assets/bag.png",
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBottomBar extends StatelessWidget {
  VoidCallback? onTap;
  int? currentIndex;
  String? imgPath;
  int? selectedIndex;
  CustomBottomBar({
    required this.onTap,
    required this.currentIndex,
    required this.imgPath,
    required this.selectedIndex,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: currentIndex == selectedIndex
            ? Colors.red
            : Colors.transparent,
        child: Image.asset(
          "$imgPath",
          scale: 3,
          color: currentIndex == selectedIndex ? whiteColor : Colors.grey,
        ),
      ),
    );
  }
}
