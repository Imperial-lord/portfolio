import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/responsiveHelper.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/desktop/projectsCardDesktop.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';
import 'package:portfolio/extensions/hoverExtensions.dart';

class ProjectsBodyDesktop extends StatefulWidget {
  _ProjectsBodyDesktopState createState() => _ProjectsBodyDesktopState();
}

class _ProjectsBodyDesktopState extends State<ProjectsBodyDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MySpaces.vLargeGapInBetween,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MyDimens.double_20 + MyDimens.double_1,
              height: MyDimens.double_20 + MyDimens.double_1,
              color: MyColors.accentColor,
            ),
            MySpaces.hSmallestGapInBetween,
            Text(
              'Projects',
              style: TextStyle(
                  color: MyColors.black,
                  fontFamily: 'poppins-bold',
                  fontSize: MyDimens.double_35),
            ),
          ],
        ),
        MySpaces.vLargestGapInBetween,
        Container(
          width: responsiveHelper(context) == 'Tablet' ? 650 : 720,
          child: Column(
            children: [
              ProjectsCardDesktop(),
              MySpaces.vLargestGapInBetween,
              ProjectsCardDesktop(),
              MySpaces.vLargestGapInBetween,
              ProjectsCardDesktop(),
              MySpaces.vLargestGapInBetween,
            ],
          ),
        ),
      ],
    );
  }
}
