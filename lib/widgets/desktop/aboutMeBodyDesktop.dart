import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/mySpaces.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:simple_animations/simple_animations.dart';
import 'aboutCardDesktop.dart';
import 'aboutDescDesktop.dart';

class AboutMeBodyDesktop extends StatefulWidget {
  _AboutMeBodyDesktopState createState() => _AboutMeBodyDesktopState();
}

/// AniProps for animation
enum AniProps { offset, opacity }

class _AboutMeBodyDesktopState extends State<AboutMeBodyDesktop> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Container(
              color: MyColors.primaryDark,
              width: 0.4 * MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Container(
              color: MyColors.white,
              width: 0.6 * MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Spacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Spacer(),
                  // AboutCardDesktop(),
                  _animatedAboutCardDesktop(),
                  MySpaces.hMediumGapInBetween,
                  AboutDescDesktop(),
                  Spacer(),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _animatedAboutCardDesktop() {
    /// Adding animation tween
    final _tween = MultiTween<AniProps>()
      ..add(AniProps.opacity, Tween(begin: 0.0, end: 1.0),
          Duration(milliseconds: 1500))
      ..add(
          // center left => center right OR center right => center left
          AniProps.offset,
          Tween(begin: Offset(-200, 0), end: Offset(0, 0)),
          Duration(milliseconds: 1500));
    return PlayAnimation<MultiTweenValues<AniProps>>(
      tween: _tween, // Pass in tween
      duration: _tween.duration, // Obtain duration from MultiTween
      delay: Duration(seconds: 4),
      curve: Curves.easeOutSine,
      builder: (context, child, value) {
        return Transform.translate(
          offset: value.get(AniProps.offset), // Get animated offset
          child: Opacity(
            opacity: value.get(AniProps.opacity),
            child: AboutCardDesktop(),
          ),
        );
      },
    );
  }
}
