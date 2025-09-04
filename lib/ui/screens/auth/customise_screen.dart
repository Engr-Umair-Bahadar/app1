import 'package:flutter/material.dart';
import 'package:myapp/core/costant/colors.dart';
import 'package:myapp/ui/home_screen.dart';
import 'package:myapp/ui/screens/auth/category_screen.dart';
import 'package:myapp/ui/screens/discount_screen.dart';

class CustomiseScreen extends StatefulWidget {
  const CustomiseScreen({super.key});

  @override
  State<CustomiseScreen> createState() => _CustomiseScreen();
}

class _CustomiseScreen extends State<CustomiseScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [CategoryScreen(), DiscountScreen(), HomeScreen()];
  void onClick(value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: screens[selectedIndex]),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: blueColor,
      //   unselectedItemColor: greyColor,
      //   currentIndex: selectedIndex,
      //   onTap: (value) {
      //     onClick(value);
      //   },
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.chair), label: "chat"),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
      //   ],
      // ),
      bottomNavigationBar: Container(
        height: 116,
        width: 455,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              GestureDetector(
                onTap: () {
                  onClick(0);
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: selectedIndex == 0
                      ? primaryColor
                      : Colors.transparent,
                  child: Icon(
                    Icons.home_outlined,
                    color: selectedIndex == 0 ? whiteColor : greyColor,
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  onClick(1);
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: selectedIndex == 1
                      ? primaryColor
                      : Colors.transparent,
                  child: Icon(
                    Icons.dashboard_outlined,
                    color: selectedIndex == 1 ? whiteColor : greyColor,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  onClick(2);
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: selectedIndex == 2
                      ? primaryColor
                      : Colors.transparent,
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: selectedIndex == 2 ? whiteColor : greyColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
