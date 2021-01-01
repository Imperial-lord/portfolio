import 'package:flutter/material.dart';
import 'package:portfolio/widgets/hightlightOnHover.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:portfolio/widgets/translateOnHover.dart';

extension HoverExtensions on Widget {
  // Get a reference to the body of the view
  static final appContainer =
      html.window.document.getElementById('app-container');

  Widget get moveUpOnHover {
    return TranslateOnHover(
      child: this,
    );
  }

  Widget get highlightOnHover{
    return HighlightOnHover(
      child: this,
    );
  }
}
