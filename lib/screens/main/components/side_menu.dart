import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_web/constants.dart';
import 'package:portfolio_web/screens/home/mail.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  final String _linkedIn =
      'https://www.linkedin.com/in/oladapodanielolatubosun';
  final String _github = 'https://github.com/Dapo-dan';
  final String _twitter =
      'https://twitter.com/dapo_lora?t=23XEuD2RwObq6T03SMHkVw&s=09';
  final String _cv =
      'https://drive.google.com/uc?export=download&id=1CV6o8aYi6idJmT2NxcbxU2O4o2HxGpDg';

  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AreaInfoText(
                      title: "Residence",
                      text: "Ife",
                    ),
                    const AreaInfoText(
                      title: "City",
                      text: "Osun State",
                    ),
                    const Skills(),
                    const SizedBox(height: defaultPadding),
                    const Coding(),
                    const Knowledges(),
                    const Divider(),
                    const SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: _launchCV,
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            const SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      color: const Color(0xFF24242E),
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            onPressed: _launchLinkedIN,
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            onPressed: _launchGithub,
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            onPressed: _launchTwitter,
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          IconButton(
                            color: const Color(0xFF8c8c8e),
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EmailSender()));
                            },
                            icon: const Icon(Icons.mail),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchLinkedIN() async {
    if (!await launch(_linkedIn)) throw 'Could not launch $_linkedIn';
  }

  void _launchCV() async {
    if (!await launch(_cv)) throw 'Could not launch $_cv';
  }

  void _launchGithub() async {
    if (!await launch(_github)) throw 'Could not launch $_github';
  }

  void _launchTwitter() async {
    if (!await launch(_twitter)) throw 'Could not launch $_twitter';
  }
}
