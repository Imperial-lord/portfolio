import 'package:flutter/material.dart';
import 'package:portfolio/globals/myColors.dart';

class HighlightOnHover extends StatefulWidget {
  final Widget child;
  final Color normal;
  final Color highlighted;

  // You can also pass the translation in here if you want to
  HighlightOnHover({required this.child, required this.normal, required this.highlighted});

  @override
  _HighlightOnHoverState createState() => _HighlightOnHoverState(normal: normal, highlighted: highlighted);
}

class _HighlightOnHoverState extends State<HighlightOnHover> {
  final Color normal;
  final Color highlighted;

  _HighlightOnHoverState({required this.normal, required this.highlighted});

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: DefaultTextStyle(
          style: TextStyle(color: _hovering ? highlighted : normal),
          child: widget.child),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}
