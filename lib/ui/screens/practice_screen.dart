import 'package:flutter/material.dart';
import 'package:myapp/core/costant/colors.dart';
import 'package:myapp/core/costant/strings.dart';

class PracticeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                alignment: Alignment.bottomRight,
                height: 200,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("$staticAssets/image-8.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: CircleAvatar(
                  radius: 20,
                  child: Icon(Icons.camera_alt_outlined),
                ),
              ),

              Positioned(
                top: 120,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      // bottom: ,
                      child: CircleAvatar(
                        radius: 100,
                        backgroundColor: blackColor,
                        backgroundImage: AssetImage("$staticAssets/baggy.png"),
                      ),
                    ),

                    Positioned(
                      bottom: 15,
                      right: 5,
                      child: CircleAvatar(
                        radius: 20,
                        child: Icon(Icons.camera_alt_outlined),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
