import 'package:flutter/material.dart';
import 'package:hotelsgo/core/custom_box_decoration.dart';
import 'package:hotelsgo/core/text_styles.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/age_of_child_row.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/hotel_form_row.dart';

class Room1Container extends StatelessWidget {
  const Room1Container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxDecorationsStyles.boxDecoration,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Room 1',
            style: AppTextStyles.secondScreenSectionTextStyle,
          ),
          const SizedBox(height: 25),
          const HotelFormRow(title: 'Adults', number: 4),
          const SizedBox(height: 25),
          const HotelFormRow(title: 'Children', number: 2),
          const SizedBox(height: 25),
          const AgeOfChildRow(),
          const SizedBox(height: 25),
          const AgeOfChildRow()
        ],
      ),
    );
  }
}
