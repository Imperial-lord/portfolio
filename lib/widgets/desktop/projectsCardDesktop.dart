import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';

class ProjectsCardDesktop extends StatefulWidget {
  _ProjectsCardDesktopState createState() => _ProjectsCardDesktopState();
}

class _ProjectsCardDesktopState extends State<ProjectsCardDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyDimens.double_400,
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
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(top: MyDimens.double_40, bottom: MyDimens.double_60),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MyDimens.double_10,
                  height: MyDimens.double_50,
                  color: MyColors.accentColor,
                ),
                MySpaces.hMediumGapInBetween,
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
                    MySpaces.vLargeGapInBetween,
                    SizedBox(
                      width: 300,
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
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          /// Add a Network Image to describe the project!
          Image(
            image: NetworkImage(
                'https://i.ibb.co/hss9TJn/i-Phone-X-XS-11-Pro-150.png'),
            fit: BoxFit.cover,
            width: 300,
          ),
        ],
      ),
    );
  }
}
