import 'package:flutter/material.dart';
import 'package:hotelsgo/core/colors.dart';
import 'package:hotelsgo/core/text_styles.dart';

class ApplyButton extends StatelessWidget {
  const ApplyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Text(
          'Apply',
          style: AppTextStyles.titleTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
