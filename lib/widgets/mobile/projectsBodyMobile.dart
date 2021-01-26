import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/responsiveHelper.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/mobile/projectsCardMobile.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';
import 'package:portfolio/extensions/hoverExtensions.dart';
import 'package:simple_animations/simple_animations.dart';

class ProjectsBodyMobile extends StatefulWidget {
  _ProjectsBodyMobileState createState() => _ProjectsBodyMobileState();
}

/// AniProps for animation
enum AniProps { offset, opacity }

class _ProjectsBodyMobileState extends State<ProjectsBodyMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        MySpaces.vSmallGapInBetween,
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            children: [for (int i = 0; i < 4; i++) _animatedProjectCards()],
          ),
        ),
      ],
    );
  }

  Widget _animatedProjectCards() {
    /// Adding animation tween
    final _tween = MultiTween<AniProps>()
      ..add(AniProps.opacity, Tween(begin: 0.0, end: 1.0),
          Duration(milliseconds: 1500))
      ..add(
          // bottom center => top center
          AniProps.offset,
          Tween(begin: Offset(0, 200), end: Offset(0, 0)),
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
                  child: ProjectsCardMobile()),
            );
          },
        ),
        MySpaces.vSmallGapInBetween,
      ],
    );
  }
}
