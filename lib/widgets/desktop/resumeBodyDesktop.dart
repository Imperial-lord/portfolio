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
import 'package:simple_animations/simple_animations.dart';

class ResumeBodyDesktop extends StatefulWidget {
  _ResumeBodyDesktopState createState() => _ResumeBodyDesktopState();
}

/// AniProps for animation
enum AniProps { offset, opacity }

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
              // Experience
              for (int i = 0; i < 2; i++)
                if (i % 2 == 0)
                  _animatedResumeCards(
                      'left',
                      Column(
                        children: [
                          ResumeCardDesktop(),
                          MySpaces.vLargeGapInBetween,
                        ],
                      ))
                else
                  _animatedResumeCards(
                      'right',
                      Column(
                        children: [
                          ResumeCardDesktop(),
                          MySpaces.vLargeGapInBetween,
                        ],
                      )),
              MySpaces.vLargeGapInBetween,
              Text(
                'Education',
                style: TextStyle(
                    color: MyColors.black,
                    fontFamily: 'poppins-bold',
                    fontSize: MyDimens.double_25),
              ),
              MySpaces.vLargeGapInBetween,
              // Education
              ResumeCardDesktop(),
              MySpaces.vLargeGapInBetween,
              ResumeCardDesktop(),
              MySpaces.vLargeGapInBetween,
              // Skills
              MySpaces.vLargeGapInBetween,
              ResumeCardSkillsDesktop(),
              MySpaces.vLargeGapInBetween,
            ],
          ),
        )
      ],
    );
  }

  Widget _animatedResumeCards(String direction, Widget widget) {
    /// Adding animation tween
    final _tween = MultiTween<AniProps>()
      ..add(AniProps.opacity, Tween(begin: 0.0, end: 1.0),
          Duration(milliseconds: 1500))
      ..add(
          // center left => center right OR center right => center left
          AniProps.offset,
          (direction == 'left')
              ? Tween(begin: Offset(200, 0), end: Offset(0, 0))
              : Tween(begin: Offset(-200, 0), end: Offset(0, 0)),
          Duration(milliseconds: 1500));
    return Column(
      children: [
        PlayAnimation<MultiTweenValues<AniProps>>(
          tween: _tween, // Pass in tween
          duration: _tween.duration, // Obtain duration from MultiTween
          curve: Curves.easeOutSine,
          builder: (context, child, value) {
            return Transform.translate(
              offset: value.get(AniProps.offset), // Get animated offset
              child:
                  Opacity(opacity: value.get(AniProps.opacity), child: widget),
            );
          },
        ),
        MySpaces.vLargestGapInBetween,
      ],
    );
  }
}
