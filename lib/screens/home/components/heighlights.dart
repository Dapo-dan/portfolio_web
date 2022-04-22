import 'package:flutter/material.dart';
import 'package:portfolio_web/components/animated_counter.dart';
import 'package:portfolio_web/responsive.dart';

import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: const [
                //     HeighLight(
                //       counter: AnimatedCounter(
                //         value: 119,
                //         text: "K+",
                //       ),
                //       label: "Subscribers",
                //     ),
                //     HeighLight(
                //       counter: AnimatedCounter(
                //         value: 40,
                //         text: "+",
                //       ),
                //       label: "Videos",
                //     ),
                //   ],
                // ),
                // const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "+",
                      ),
                      label: "GitHub Projects",
                    ),
                    // HeighLight(
                    //   counter: AnimatedCounter(
                    //     value: 13,
                    //     text: "K+",
                    //   ),
                    //   label: "Stars",
                    // ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // HeighLight(
                //   counter: AnimatedCounter(
                //     value: 119,
                //     text: "K+",
                //   ),
                //   label: "Subscribers",
                // ),
                // HeighLight(
                //   counter: AnimatedCounter(
                //     value: 40,
                //     text: "+",
                //   ),
                //   label: "Videos",
                // ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 10,
                    text: "+",
                  ),
                  label: "GitHub Projects",
                ),
                // HeighLight(
                //   counter: AnimatedCounter(
                //     value: 13,
                //     text: "K+",
                //   ),
                //   label: "Stars",
                // ),
              ],
            ),
    );
  }
}
