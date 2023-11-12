import 'package:flutter/material.dart';
import 'package:hotelsgo/core/custom_box_decoration.dart';
import 'package:hotelsgo/core/text_styles.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/hotel_form_row.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/icrement_and_decrement_button.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/number_of_rooms_row.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/second_secreen_title.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .92,
      decoration: BoxDecoration(
          color: const Color(0xffEBECED),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          const SecondScreenTitle(),
          const NumberOfRoomsRow(),
          Container(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
