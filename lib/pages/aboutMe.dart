import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/functions/responsiveHelper.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/globals/myDimens.dart';
import 'package:portfolio/globals/mySpaces.dart';
import 'package:portfolio/pages/resume.dart';
import 'package:portfolio/widgets/desktop/aboutCardDesktop.dart';
import 'package:portfolio/widgets/desktop/aboutDescDesktop.dart';
import 'package:portfolio/widgets/desktop/footerDesktop.dart';
import 'package:portfolio/widgets/desktop/navBarDesktop.dart';
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
                    Stack(
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
                                  AboutCardDesktop(),
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
