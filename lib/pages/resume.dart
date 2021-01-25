import 'package:flutter/material.dart';
import 'package:portfolio/functions/responsiveHelper.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/widgets/desktop/footerDesktop.dart';
import 'package:portfolio/widgets/desktop/navBarDesktop.dart';
import 'package:portfolio/widgets/desktop/resumeBodyDesktop.dart';
import 'package:portfolio/widgets/mobile/footerMobile.dart';
import 'package:portfolio/widgets/mobile/navBarMobile.dart';
import 'package:portfolio/widgets/mobile/resumeBodyMobile.dart';
import 'package:portfolio/widgets/tablet/footerTablet.dart';
import 'package:portfolio/widgets/tablet/navBarTablet.dart';

class Resume extends StatefulWidget {
  static const String route = "/resume";

  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          SingleChildScrollView(
            child: Material(
              color: MyColors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: MyDimens.double_200, bottom: MyDimens.double_60),
                    color: MyColors.primaryDark,
                    width: MediaQuery.of(context).size.width,
                    child: (responsiveHelper(context)) == "Mobile"
                        ? ResumeBodyMobile()
                        : ResumeBodyDesktop(),
                  ),
                  if (responsiveHelper(context) == "Desktop")
                    FooterDesktop()
                  else if (responsiveHelper(context) == "Tablet")
                    FooterTablet()
                  else
                    FooterMobile(),
                ],
              ),
            ),
          ),

          /// This is the nav bar -- make separate widgets for desktop, tablet and phone.
          if (responsiveHelper(context) == "Desktop")
            NavBarDesktop(
              currentScreen: 1,
            )
          else if (responsiveHelper(context) == "Tablet")
            NavBarTablet()
          else
            NavBarMobile(),
        ]),
      ),
    );
  }
}
