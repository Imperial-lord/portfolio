import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';

class ResumeCardMobile extends StatefulWidget {
  _ResumeCardMobileState createState() => _ResumeCardMobileState();
}

class _ResumeCardMobileState extends State<ResumeCardMobile> {
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
          horizontal: MyDimens.double_20, vertical: MyDimens.double_40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2019 - Present',
                    style: TextStyle(
                        color: MyColors.accentColor,
                        fontFamily: 'poppins-bold',
                        fontSize: MyDimens.double_18),
                  ),
                  MySpaces.vGapInBetween,
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
                ],
              ),
              Spacer(),
              Image(
                image: NetworkImage('https://i.ibb.co/M1FZCPL/mlh.png'),
                fit: BoxFit.contain,
                height: 100,
                width: 100,
              ),
            ],
          ),
          MySpaces.vLargeGapInBetween,
          Text(
            MyStrings.tempDescResume,
            style: TextStyle(
              height: 1.5,
              color: MyColors.black,
              fontFamily: 'avenir-light',
              fontSize: MyDimens.double_17,
            ),
          ),
        ],
      ),
    );
  }
}

class ResumeCardSkillsMobile extends StatelessWidget {
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
          horizontal: MyDimens.double_20, vertical: MyDimens.double_40),
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
              MySpaces.vGapInBetween,
              _getBulletPoint('Entrepreneurial Mindset'),
              MySpaces.vGapInBetween,
              _getBulletPoint('Go-to-Market Planning'),
              MySpaces.vGapInBetween,
              _getBulletPoint('Teamwork & Collaboration'),
              MySpaces.vGapInBetween,
              _getBulletPoint('Digital Analytics'),
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
              MySpaces.vGapInBetween,
              _getBulletPoint('English'),
              MySpaces.vGapInBetween,
              _getBulletPoint('Hindi'),
              MySpaces.vGapInBetween,
              _getBulletPoint('Odia'),
              MySpaces.vGapInBetween,
              _getBulletPoint('Japanese'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getBulletPoint(text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
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
              fontSize: MyDimens.double_15),
        ),
      ],
    );
  }
}
