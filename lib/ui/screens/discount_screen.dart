// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:myapp/core/costant/colors.dart';
import 'package:myapp/core/costant/strings.dart';
import 'package:myapp/core/costant/text_style.dart';

class DiscountScreen extends StatelessWidget {
  const DiscountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Discount Screen")),
      body: Column(children: [DiscountCard()]),
    );
  }
}

class DiscountCard extends StatelessWidget {
  const DiscountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 378,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffDE6060), Color(0xffB10E0E)],
        ),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(width: 0.75, color: blackColor),

        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            color: blackColor.withOpacity(0.19),
            blurRadius: 20,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "All The Restaurants",
                  style: style16B.copyWith(color: whiteColor),
                ),
                Text(
                  "Discount",
                  style: style18B.copyWith(
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Offers",
                  style: style42WB.copyWith(
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(14),
            child: Image.asset("$staticAssets/offer.png"),
          ),
        ],
      ),
    );
  }
}
