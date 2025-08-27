import 'package:flutter/material.dart';
import 'package:myapp/core/costant/colors.dart';

class RootScreen extends StatefulWidget {
  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [Text("Home"), Text("Search"), Text("Profile")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: screens[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: blueColor,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: "Search",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
