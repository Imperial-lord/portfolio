import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/yearFinder.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/globals/myString.dart';
import 'package:portfolio/widgets/mobile/aboutCardMobileTab.dart';
import 'package:portfolio/widgets/mobile/aboutDescMobileTab.dart';
import 'package:portfolio/widgets/portfolio_icons.dart';
import 'package:portfolio/extensions/hoverExtensions.dart';
import 'package:simple_animations/simple_animations.dart';

class AboutMeBodyMobile extends StatefulWidget {
  _AboutMeBodyMobileState createState() => _AboutMeBodyMobileState();
}

/// AniProps for animation
enum AniProps { offset, opacity }

class _AboutMeBodyMobileState extends State<AboutMeBodyMobile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              color: MyColors.white,
              width: MediaQuery.of(context).size.width,
              height: 0.2 * MediaQuery.of(context).size.height,
            ),
            Container(
              color: MyColors.primaryDark,
              width: MediaQuery.of(context).size.width,
              height: 0.8 * MediaQuery.of(context).size.height,
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Spacer(),
              _animatedProjectCardMobile(),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _animatedProjectCardMobile() {
    /// Adding animation tween
    final _tween = MultiTween<AniProps>()
      ..add(AniProps.opacity, Tween(begin: 0.0, end: 1.0),
          Duration(milliseconds: 1500))
      ..add(
          // bottom center => top center
          AniProps.offset,
          Tween(begin: Offset(0, 200), end: Offset(0, 0)),
          Duration(milliseconds: 1500));
    return PlayAnimation<MultiTweenValues<AniProps>>(
      tween: _tween, // Pass in tween
      duration: _tween.duration, // Obtain duration from MultiTween
      curve: Curves.easeOutSine,
      builder: (context, child, value) {
        return Transform.translate(
          offset: value.get(AniProps.offset), // Get animated offset
          child: Opacity(
            opacity: value.get(AniProps.opacity),
            child: Column(
              children: [
                AboutCardMobileTab(),
                MySpaces.vLargeGapInBetween,
                AboutDescMobileTab(),
              ],
            ),
          ),
        );
      },
    );
  }
}
