import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'aboutCardDesktop.dart';
import 'aboutDescDesktop.dart';

class AboutMeBodyDesktop extends StatefulWidget {
  _AboutMeBodyDesktopState createState() => _AboutMeBodyDesktopState();
}

class _AboutMeBodyDesktopState extends State<AboutMeBodyDesktop> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Container(
              color: MyColors.primaryDark,
              width: 0.4 * MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Container(
              color: MyColors.white,
              width: 0.6 * MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Spacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Spacer(),
                  AboutCardDesktop(),
                  MySpaces.hMediumGapInBetween,
                  AboutDescDesktop(),
                  Spacer(),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
