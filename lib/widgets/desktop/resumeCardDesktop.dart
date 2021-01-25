import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';

class ResumeCardDesktop extends StatefulWidget {
  _ResumeCardDesktopState createState() => _ResumeCardDesktopState();
}

class _ResumeCardDesktopState extends State<ResumeCardDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: MyColors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(138, 131, 124, 0.23),
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              -15,
              17,
            ),
          )
        ],
      ),
      padding: EdgeInsets.symmetric(
          horizontal: MyDimens.double_50, vertical: MyDimens.double_70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '2019 - Present',
            style: TextStyle(
                color: MyColors.accentColor,
                fontFamily: 'poppins-bold',
                fontSize: MyDimens.double_20),
          ),
          MySpaces.vGapInBetween,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'JOB POSITION',
                    style: TextStyle(
                      color: MyColors.black,
                      fontFamily: 'avenir',
                      fontSize: MyDimens.double_14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  MySpaces.vGapInBetween,
                  Text(
                    'Company Name',
                    style: TextStyle(
                      color: MyColors.black,
                      fontFamily: 'avenir-light',
                      fontSize: MyDimens.double_14,
                    ),
                  ),
                  Text(
                    'Company Location',
                    style: TextStyle(
                      color: MyColors.black,
                      fontFamily: 'avenir-light',
                      fontSize: MyDimens.double_14,
                    ),
                  ),
                  Image(
                    image: NetworkImage('https://i.ibb.co/M1FZCPL/mlh.png'),
                    fit: BoxFit.contain,
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              for (int i = 0; i < 3; i++) MySpaces.hLargeGapInBetween,
              Flexible(
                child: Text(
                  MyStrings.tempDescResume,
                  style: TextStyle(
                    height: 1.5,
                    color: MyColors.black,
                    fontFamily: 'avenir-light',
                    fontSize: MyDimens.double_17,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ResumeCardSkillsDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: new BoxDecoration(
        color: MyColors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(138, 131, 124, 0.23),
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              -15,
              17,
            ),
          )
        ],
      ),
      padding: EdgeInsets.symmetric(
          horizontal: MyDimens.double_50, vertical: MyDimens.double_60),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Professional Skills',
                style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'poppins-bold',
                    fontSize: MyDimens.double_25),
              ),
              MySpaces.vLargeGapInBetween,
              Row(
                children: [
                  _getBulletPoint('Entrepreneurial Mindset'),
                  MySpaces.hLargeGapInBetween,
                  _getBulletPoint('Go-to-Market Planning'),
                ],
              ),
              MySpaces.vLargeGapInBetween,
              Row(
                children: [
                  _getBulletPoint('Teamwork & Collaboration'),
                  MySpaces.hLargeGapInBetween,
                  _getBulletPoint('Digital Analytics'),
                ],
              ),
              MySpaces.vLargeGapInBetween,
            ],
          ),
          MySpaces.vLargeGapInBetween,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Languages',
                style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'poppins-bold',
                    fontSize: MyDimens.double_25),
              ),
              MySpaces.vLargeGapInBetween,
              Row(
                children: [
                  _getBulletPoint('English'),
                  MySpaces.hLargeGapInBetween,
                  _getBulletPoint('Hindi'),
                ],
              ),
              MySpaces.vLargeGapInBetween,
              Row(
                children: [
                  _getBulletPoint('Odia'),
                  MySpaces.hLargeGapInBetween,
                  _getBulletPoint('Japanese'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getBulletPoint(text) {
    return Row(
      children: [
        Container(
          width: MyDimens.double_13,
          height: MyDimens.double_13,
          color: MyColors.accentColor,
        ),
        MySpaces.hSmallestGapInBetween,
        Text(
          text,
          style: TextStyle(
              color: MyColors.black,
              fontFamily: 'avenir-light',
              fontSize: MyDimens.double_14),
        ),
      ],
    );
  }
}
