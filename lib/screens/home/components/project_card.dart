import 'package:flutter/material.dart';
import 'package:portfolio_web/models/project.dart';
import 'package:portfolio_web/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        String _url = project.url!;
        if (!await launch(_url)) throw 'Could not launch $_url';
      },
      style: TextButton.styleFrom(
        onSurface: secondaryColor,
        backgroundColor: secondaryColor,
        padding: const EdgeInsets.all(defaultPadding),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: defaultPadding / 3,
          ),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
