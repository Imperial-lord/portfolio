import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/responsiveHelper.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/desktop/resumeCardDesktop.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';
import 'package:portfolio/extensions/hoverExtensions.dart';

class ResumeBodyDesktop extends StatefulWidget {
  _ResumeBodyDesktopState createState() => _ResumeBodyDesktopState();
}

class _ResumeBodyDesktopState extends State<ResumeBodyDesktop> {
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
              'Resume',
              style: TextStyle(
                  color: MyColors.black,
                  fontFamily: 'poppins-bold',
                  fontSize: MyDimens.double_35),
            ),
          ],
        ),
        for (int i = 0; i < 3; i++) MySpaces.vLargeGapInBetween,
        Container(
          width: responsiveHelper(context) == 'Tablet' ? 650 : 720,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Experience',
                    style: TextStyle(
                        color: MyColors.black,
                        fontFamily: 'poppins-bold',
                        fontSize: MyDimens.double_25),
                  ),
                  Spacer(),
                  FlatButton(
                    onPressed: () {},
                    color: MyColors.accentColor,
                    hoverColor: MyColors.primaryDark,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MyDimens.double_20),
                      side: BorderSide(
                        color: MyColors.accentColor,
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MyDimens.double_20,
                          vertical: MyDimens.double_10),
                      child: Text(
                        'DOWNLOAD CV',
                        style: TextStyle(
                          fontFamily: 'avenir-regular',
                          fontSize: 15,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ).aboutButton3,
                  ),
                ],
              ),
              MySpaces.vLargeGapInBetween,
              ResumeCardDesktop(),
              MySpaces.vLargeGapInBetween,
              ResumeCardDesktop(),
              MySpaces.vLargeGapInBetween,
              MySpaces.vLargeGapInBetween,
              Text(
                'Education',
                style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'poppins-bold',
                    fontSize: MyDimens.double_25),
              ),
              MySpaces.vLargeGapInBetween,
              ResumeCardDesktop(),
              MySpaces.vLargeGapInBetween,
              ResumeCardDesktop(),
              MySpaces.vLargeGapInBetween,
              MySpaces.vLargeGapInBetween,
              ResumeCardSkillsDesktop(),
              MySpaces.vLargeGapInBetween,
            ],
          ),
        )
      ],
    );
  }
}
