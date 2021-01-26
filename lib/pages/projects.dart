import 'package:flutter/material.dart';
import 'package:portfolio/functions/responsiveHelper.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/widgets/desktop/footerDesktop.dart';
import 'package:portfolio/widgets/desktop/navBarDesktop.dart';
import 'package:portfolio/widgets/desktop/projectsBodyDesktop.dart';
import 'package:portfolio/widgets/mobile/footerMobile.dart';
import 'package:portfolio/widgets/mobile/navBarMobile.dart';
import 'package:portfolio/widgets/mobile/projectsBodyMobile.dart';
import 'package:portfolio/widgets/tablet/footerTablet.dart';
import 'package:portfolio/widgets/tablet/navBarTablet.dart';

class Projects extends StatefulWidget {
  static const String route = "/projects";

  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Material(
                color: MyColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: MyColors.primaryDark,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(
                          top: MyDimens.double_150, bottom: MyDimens.double_60),
                      child: (responsiveHelper(context)) == "Mobile"
                          ? ProjectsBodyMobile()
                          : ProjectsBodyDesktop(),
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
                currentScreen: 2,
              )
            else if (responsiveHelper(context) == "Tablet")
              NavBarTablet()
            else
              NavBarMobile(),
          ],
        ),
      ),
    );
  }
}
