import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/responsiveHelper.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/mobile/resumeCardMobile.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';
import 'package:portfolio/extensions/hoverExtensions.dart';

class ResumeBodyMobile extends StatefulWidget {
  _ResumeBodyMobileState createState() => _ResumeBodyMobileState();
}

class _ResumeBodyMobileState extends State<ResumeBodyMobile> {
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
        MySpaces.vLargeGapInBetween,
        Container(
          width: MediaQuery.of(context).size.width*0.9,
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
                        fontSize: MyDimens.double_20),
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
                          horizontal: MyDimens.double_5,
                          vertical: MyDimens.double_5),
                      child: Text(
                        'DOWNLOAD CV',
                        style: TextStyle(
                          fontFamily: 'avenir-regular',
                          fontSize: 14,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ).aboutButton3,
                  ),
                ],
              ),
              MySpaces.vLargeGapInBetween,
              ResumeCardMobile(),
              MySpaces.vLargeGapInBetween,
              ResumeCardMobile(),
              MySpaces.vLargeGapInBetween,
              MySpaces.vLargeGapInBetween,
              Text(
                'Education',
                style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'poppins-bold',
                    fontSize: MyDimens.double_20),
              ),
              MySpaces.vLargeGapInBetween,
              ResumeCardMobile(),
              MySpaces.vLargeGapInBetween,
              ResumeCardMobile(),
              MySpaces.vLargeGapInBetween,
              MySpaces.vLargeGapInBetween,
              ResumeCardSkillsMobile(),
              MySpaces.vLargeGapInBetween,
            ],
          ),
        )
      ],
    );
  }
}
