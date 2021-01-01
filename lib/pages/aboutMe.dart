import 'package:flutter/material.dart';
import 'package:portfolio/functions/responsiveHelper.dart';
import 'package:portfolio/globals/myColors.dart';
import 'package:portfolio/widgets/desktop/footerDesktop.dart';
import 'package:portfolio/widgets/desktop/navBarDesktop.dart';
import 'package:portfolio/widgets/mobile/footerMobile.dart';
import 'package:portfolio/widgets/mobile/navBarMobile.dart';
import 'package:portfolio/widgets/tablet/footerTablet.dart';
import 'package:portfolio/widgets/tablet/navBarTablet.dart';

class AboutMe extends StatefulWidget {
  static String id = "about_me";

  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Material(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// This is the nav bar -- make separate widgets for desktop, tablet and phone.
                if (responsiveHelper(context) == "Desktop")
                  NavBarDesktop()
                else if (responsiveHelper(context) == "Tablet")
                  NavBarTablet()
                else
                  NavBarMobile(),
                Container(
                  color: MyColors.primaryDark,
                  width: 0.4 * MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
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
      ),
    );
  }
}
