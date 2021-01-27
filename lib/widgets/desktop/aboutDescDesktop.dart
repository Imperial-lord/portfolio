import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';
import 'package:portfolio/extensions/hoverExtensions.dart';
import 'package:simple_animations/simple_animations.dart';

class AboutDescDesktop extends StatefulWidget {
  _AboutDescDesktopState createState() => _AboutDescDesktopState();
}

/// AniProps for animation
enum AniProps { offset, opacity }

class _AboutDescDesktopState extends State<AboutDescDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyDimens.double_525,
      width: 370,
      padding: EdgeInsets.only(top: MyDimens.double_18),
      color: MyColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _animatedHello(),
          _animatedHereIam(),
          MySpaces.vLargeGapInBetween,
          _animatedDescParagraph(),
        ],
      ),
    );
  }

  Widget _animatedHello() {
    /// Adding animation tween
    final _tween = MultiTween<AniProps>()
      ..add(AniProps.opacity, Tween(begin: 0.0, end: 1.0),
          Duration(milliseconds: 1500));

    return PlayAnimation<MultiTweenValues<AniProps>>(
      tween: _tween, // Pass in tween
      duration: _tween.duration, // Obtain duration from MultiTween
      curve: Curves.easeOutSine,
      builder: (context, child, value) {
        return Opacity(
          opacity: value.get(AniProps.opacity),
          child: Text(
            'Hello',
            style: TextStyle(
              color: MyColors.black,
              fontFamily: 'poppins',
              fontSize: 100,
              fontWeight: FontWeight.w900,
            ),
          ),
        );
      },
    );
  }

  Widget _animatedHereIam() {
    /// Adding animation tween
    final _tween = MultiTween<AniProps>()
      ..add(AniProps.opacity, Tween(begin: 0.0, end: 1.0),
          Duration(milliseconds: 1500));

    return PlayAnimation<MultiTweenValues<AniProps>>(
      tween: _tween, // Pass in tween
      duration: _tween.duration, // Obtain duration from MultiTween
      delay: Duration(seconds: 2),
      curve: Curves.easeOutSine,
      builder: (context, child, value) {
        return Opacity(
          opacity: value.get(AniProps.opacity),
          child: Text(
            "Here's who I am & what I do",
            style: TextStyle(
              color: MyColors.black,
              fontFamily: 'avenir-light',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }

  Widget _animatedDescParagraph(){
    /// Adding animation tween
    final _tween = MultiTween<AniProps>()
      ..add(AniProps.opacity, Tween(begin: 0.0, end: 1.0),
          Duration(milliseconds: 1500))
      ..add(
        // center left => center right OR center right => center left
          AniProps.offset,
          Tween(begin: Offset(200, 0), end: Offset(0, 0)),
          Duration(milliseconds: 1500));
    return PlayAnimation<MultiTweenValues<AniProps>>(
      tween: _tween, // Pass in tween
      duration: _tween.duration, // Obtain duration from MultiTween
      delay: Duration(seconds: 3),
      curve: Curves.easeOutSine,
      builder: (context, child, value) {
        return Transform.translate(
          offset: value.get(AniProps.offset), // Get animated offset
          child: Opacity(
            opacity: value.get(AniProps.opacity),
            child: Column(
              children: [
                Row(
                  children: [
                    FlatButton(
                      onPressed: () {},
                      color: MyColors.accentColor,
                      hoverColor: MyColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(MyDimens.double_20),
                        side: BorderSide(
                          color: MyColors.accentColor,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MyDimens.double_30,
                            vertical: MyDimens.double_10),
                        child: Text(
                          'RESUME',
                          style: TextStyle(
                            fontFamily: 'avenir-regular',
                            fontSize: 15,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ).aboutButton1,
                    ),
                    MySpaces.hGapInBetween,
                    FlatButton(
                      onPressed: () {},
                      color: MyColors.white,
                      hoverColor: MyColors.accentColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(MyDimens.double_20),
                        side: BorderSide(
                          color: MyColors.accentColor,
                        ),
                      ),
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: MyDimens.double_30,
                              vertical: MyDimens.double_10),
                          child: Text(
                            'PROJECTS',
                            style: TextStyle(
                              fontFamily: 'avenir-regular',
                              fontSize: 15,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w600,
                            ),
                          )).aboutButton2,
                    ),
                  ],
                ),
                MySpaces.vLargeGapInBetween,
                Text(
                  "I'm a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me to add your own content and make changes to the font.",
                  style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'avenir-light',
                    fontSize: 17,
                    height: 1.5,
                  ),
                ),
                MySpaces.vLargeGapInBetween,
                Text(
                  "I’m a great place for you to tell a story and let your users know a little more about you.",
                  style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'avenir-light',
                    fontSize: 17,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
