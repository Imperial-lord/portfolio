import 'package:flutter/material.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/widgets/hightlightOnHover.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:portfolio/widgets/translateOnHover.dart';

extension HoverExtensions on Widget {
  // Get a reference to the body of the view

  static final appContainer =
      html.window.document.getElementById('app-container');

  Widget get moveUpOnHover {
    return TranslateOnHover(child: this);
  }

  Widget get highlightOnHover {
    return HighlightOnHover(
        child: this, normal: MyColors.black, highlighted: MyColors.accentColor);
  }

  Widget get aboutButton1 {
    return HighlightOnHover(
        child: this, normal: MyColors.white, highlighted: MyColors.accentColor);
  }

  Widget get aboutButton2 {
    return HighlightOnHover(
        child: this, normal: MyColors.accentColor, highlighted: MyColors.white);
  }

  Widget get aboutButton3 {
    return HighlightOnHover(
        child: this, normal: MyColors.white, highlighted: MyColors.black);
  }
}
