import 'package:flutter/material.dart';

String responsiveHelper(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  if (width > 1024)
    return "Desktop";
  else if (width > 500)
    return "Tablet";
  else
    return "Mobile";
}
