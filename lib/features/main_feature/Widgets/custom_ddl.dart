import 'package:flutter/material.dart';
import 'package:hotelsgo/core/text_styles.dart';

class CustomDDL extends StatelessWidget {
  const CustomDDL({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
        padding:
            const EdgeInsets.only(right: 15, left: 20, top: 15, bottom: 15),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select Nationality',
              style: AppTextStyles.labelTextStyle,
            ),
            const Icon(Icons.expand_more)
          ],
        ));
  }
}
