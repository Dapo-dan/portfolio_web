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
    return GestureDetector(
      onTap: () async {
        String url = project.url!;
        if (!await launchUrl(Uri.parse(url))) throw 'Could not launch $url';
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12,
          ),
          color: secondaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleSmall,
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
      ),
    );

  }
}
