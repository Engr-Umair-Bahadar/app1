import 'package:flutter/material.dart';
import 'package:myapp/core/costant/auth_field_decoration.dart';
import 'package:myapp/core/costant/colors.dart';
import 'package:myapp/core/costant/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200), // total height of AppBar
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: primaryColor,
          flexibleSpace: SafeArea(
            child: Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      // 🔹 Logo  row
                      Center(
                        child: Image.asset(
                          "assets/static_assets/app_logo.png",
                          scale: 8,
                          color: whiteColor,
                        ),
                      ),
                      SizedBox(height: 10),
                      // 🔹 Row at the top
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: authFieldDecoration.copyWith(
                                fillColor: whiteColor,
                                filled: true,
                                hintText: "Search...",
                                prefixIcon: Icon(Icons.search),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(Icons.message, color: whiteColor),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.notifications, color: whiteColor),
                        ],
                      ),

                      Row(
                        children: [
                          Icon(Icons.location_city, color: whiteColor),
                          Text(
                            "Pamulang Barat Residence No.5, RT 05/ ...",
                            style: style12Sb.copyWith(color: whiteColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -95,
                  child: Container(
                    height: 163,
                    width: 307,
                    padding: EdgeInsets.all(20),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [Color(0xffDE6060), Color(0xffB10E0E)],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Discount",
                              style: style14B.copyWith(color: whiteColor),
                            ),
                            Text(
                              "25%",
                              style: style18B.copyWith(color: whiteColor),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Text(
                              "Discount",
                              style: style14B.copyWith(color: whiteColor),
                            ),
                            Text(
                              "25%",
                              style: style18B.copyWith(color: whiteColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
