import 'package:flutter/material.dart';
import 'package:portfolio_web/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "Java/ Kotlin",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "HTML",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.5,
          label: "CSS",
        ),
      ],
    );
  }
}
