import 'package:flutter/material.dart';
import 'package:hotelsgo/core/text_styles.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/icrement_and_decrement_button.dart';

class HotelFormRow extends StatefulWidget {
  const HotelFormRow({super.key, required this.title, required this.min});
  final String title;
  final int min;

  @override
  State<HotelFormRow> createState() => _HotelFormRowState();
}

class _HotelFormRowState extends State<HotelFormRow> {
  late int number;
  bool isActive = false;
  @override
  void initState() {
    number = widget.min;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          widget.title,
          style: AppTextStyles.secondScreenNormalTextStyle,
        ),
        const Spacer(),
        IncrementAndDecrementButton(
          onTap: () {
            if (number == widget.min) {
              isActive = false;
            } else {
              isActive = true;
              number = number - 1;
              if (number == widget.min) {
                isActive = false;
              }
            }
            setState(() {});
          },
          isActive: isActive,
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
        IncrementAndDecrementButton(
          onTap: () {
            number = number + 1;
            isActive = true;
            setState(() {});
          },
          isIncrement: true,
          isActive: true,
        ),
      ],
    );
  }
}
