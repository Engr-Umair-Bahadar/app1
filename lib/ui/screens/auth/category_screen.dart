import 'package:flutter/material.dart';
import 'package:myapp/core/costant/colors.dart';
import 'package:myapp/core/costant/strings.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "$staticAssets/ellipse.png",
                fit: BoxFit.fill,
                height: 100,
                width: double.infinity,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset("$staticAssets/app_logo.png", scale: 9.5),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search here",
                          fillColor: whiteColor,
                          prefixIcon: Icon(Icons.search, color: blackColor),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(width: 1, color: whiteColor),
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.notifications_none),
                  ],
                ),
              ),
            ],
          ),

          Container(
            clipBehavior: Clip.none,
            width: 168,
            height: 183,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.asset(
                    height: 131,
                    width: double.infinity,
                    "$staticAssets/sardar.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Text('Sardar Ji Cottrelle Blvd'),
                    Image.asset("$staticAssets/pic.png"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
