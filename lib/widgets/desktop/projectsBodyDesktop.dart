import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/responsiveHelper.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/desktop/projectsCardDesktop.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:simple_animations/simple_animations.dart';

class ProjectsBodyDesktop extends StatefulWidget {
  _ProjectsBodyDesktopState createState() => _ProjectsBodyDesktopState();
}

/// AniProps for animation
enum AniProps { offset, opacity }

class _ProjectsBodyDesktopState extends State<ProjectsBodyDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MySpaces.vLargestGapInBetween,
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
              Text(
                MyStrings.tempDescProjects,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.5,
                  color: MyColors.black,
                  fontFamily: 'avenir-light',
                  fontSize: MyDimens.double_17,
                ),
              ),
              MySpaces.vLargestGapInBetween,
              for (int i = 0; i < 4; i++)
                if (i % 2 == 0)
                  _animatedProjectCards('left')
                else
                  _animatedProjectCards('right'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _animatedProjectCards(String direction) {
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
              child: Opacity(
                  opacity: value.get(AniProps.opacity),
                  child: ProjectsCardDesktop()),
            );
          },
        ),
        MySpaces.vLargestGapInBetween,
      ],
    );
  }
}
