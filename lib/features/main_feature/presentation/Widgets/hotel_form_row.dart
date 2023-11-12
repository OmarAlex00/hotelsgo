import 'package:flutter/material.dart';
import 'package:hotelsgo/core/text_styles.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/icrement_and_decrement_button.dart';

class HotelFormRow extends StatelessWidget {
  const HotelFormRow({
    super.key,
    required this.title,
    required this.number,
  });
  final String title;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          style: AppTextStyles.secondScreenNormalTextStyle,
        ),
        const Spacer(),
        const IncrementAndDecrementButton(
          isIncrement: false,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '$number',
          style: AppTextStyles.secondScreenSectionTextStyle,
        ),
        const SizedBox(
          width: 10,
        ),
        const IncrementAndDecrementButton(isIncrement: true),
      ],
    );
  }
}
