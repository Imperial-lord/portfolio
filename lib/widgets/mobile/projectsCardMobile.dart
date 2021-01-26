import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';

class ProjectsCardMobile extends StatefulWidget {
  _ProjectsCardMobileState createState() => _ProjectsCardMobileState();
}

class _ProjectsCardMobileState extends State<ProjectsCardMobile> {
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
      padding: EdgeInsets.only(top: MyDimens.double_10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MyDimens.double_10,
                height: MyDimens.double_50,
                color: MyColors.accentColor,
              ),
              MySpaces.hGapInBetween,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Project name 01',
                    style: TextStyle(
                        color: MyColors.accentColor,
                        fontFamily: 'poppins-bold',
                        fontSize: MyDimens.double_20),
                  ),
                  MySpaces.vSmallestGapInBetween,
                  Text(
                    'Role Title',
                    style: TextStyle(
                        color: MyColors.black,
                        fontFamily: 'avenir-light',
                        fontSize: MyDimens.double_17),
                  ),
                ],
              ),
            ],
          ),
          MySpaces.vMediumGapInBetween,
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
              MyStrings.tempDescProjects,
              style: TextStyle(
                height: 1.5,
                color: MyColors.black,
                fontFamily: 'avenir-light',
                fontSize: MyDimens.double_17,
              ),
            ),
          ),
          MySpaces.vGapInBetween,
          /// Add a Network Image to describe the project!
          Image(
            image: NetworkImage(
                'https://i.ibb.co/w7cFKD0/i-Phone-X-XS-11-Pro-156.png'),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
