import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/core/costant/colors.dart';
import 'package:myapp/core/costant/strings.dart';
import 'package:myapp/core/costant/text_style.dart';

class Task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Center(
          child: Text(
            'Upcoming Events',
            style: GoogleFonts.quicksand(
              textStyle: style24B.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        backgroundColor: whiteColor,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(15.5),
            child: Container(
              width: 156,
              height: 207,
              decoration: BoxDecoration(
                //color: blackColor,
                color: Color(0xffF7F7F7),
                borderRadius: BorderRadius.circular(24),
              ),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 16, 12, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRect(
                      child: Image.asset(
                        eventImages[index],
                        width: 132,
                        height: 104,
                      ),
                    ),

                    Text(
                      "Hike & Heal",
                      style: GoogleFonts.quicksand(
                        textStyle: style12Sb.copyWith(
                          fontWeight: FontWeight.w700,
                          color: blackColor,
                        ),
                      ),
                    ),

                    Text(
                      "12/08/2024",
                      style: GoogleFonts.lato(
                        textStyle: style12Sb.copyWith(
                          fontWeight: FontWeight.w500,
                          color: blackColor,
                        ),
                      ),
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text(
                          "Tofino, British Co ...",
                          style: GoogleFonts.lato(
                            textStyle: style10M.copyWith(
                              fontWeight: FontWeight.w500,
                              color: blackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

final List<String> eventImages = [
  "$staticAssets/party_img.png",
  "$staticAssets/hiking_img.png",
  "$staticAssets/hiking_two.png",
  "$staticAssets/party_three.png",
  "$staticAssets/party_two.png",
  "$staticAssets/swimming.png",
];
