import 'package:flutter/material.dart';
import 'package:hotelsgo/core/text_styles.dart';

class AgeOfChildRow extends StatelessWidget {
  const AgeOfChildRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Age of child 1',
            style: AppTextStyles.secondScreenSectionTextStyle,
          ),
          Text(
            '14 years',
            style: AppTextStyles.secondScreenNormalTextStyle,
          )
        ],
      ),
    );
  }
}
