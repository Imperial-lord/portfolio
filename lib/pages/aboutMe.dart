import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/responsiveHelper.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/pages/resume.dart';
import 'package:portfolio/widgets/desktop/aboutCardDesktop.dart';
import 'package:portfolio/widgets/desktop/aboutDescDesktop.dart';
import 'package:portfolio/widgets/desktop/aboutMeBodyDesktop.dart';
import 'package:portfolio/widgets/desktop/footerDesktop.dart';
import 'package:portfolio/widgets/desktop/navBarDesktop.dart';
import 'package:portfolio/widgets/mobile/aboutMeBodyMobileTab.dart';
import 'package:portfolio/widgets/mobile/footerMobile.dart';
import 'package:portfolio/widgets/mobile/navBarMobile.dart';
import 'package:portfolio/widgets/tablet/footerTablet.dart';
import 'package:portfolio/widgets/tablet/navBarTablet.dart';

class AboutMe extends StatefulWidget {
  static const String route = "/about";

  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
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
                  children: [
                    Container(
                      color: MyColors.white,
                      height: MyDimens.double_125,
                    ),
                    if(responsiveHelper(context)=="Desktop") AboutMeBodyDesktop()
                    else AboutMeBodyMobileTab(),
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
            Column(
              children: [
                /// This is the nav bar -- make separate widgets for desktop, tablet and phone.
                if (responsiveHelper(context) == "Desktop")
                  NavBarDesktop(
                    currentScreen: 0,
                  )
                else if (responsiveHelper(context) == "Tablet")
                  NavBarTablet()
                else
                  NavBarMobile(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
