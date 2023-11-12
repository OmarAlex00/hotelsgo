import 'package:flutter/material.dart';
import 'package:hotelsgo/core/custom_box_decoration.dart';
import 'package:hotelsgo/core/text_styles.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/number_of_rooms_row.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/room_one_container.dart';
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
          const Room1Container(),
          Container(
            decoration: AppBoxDecorationsStyles.boxDecoration,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Pet-friendly',
                          style: AppTextStyles.secondScreenNormalTextStyle,
                        ),
                        const Icon(Icons.info_outline)
                      ],
                    ),
                    Text(
                      'Only shows stays that allow pets',
                      style: AppTextStyles.secondScreenHintTextStyle,
                    )
                  ],
                ),
                ElevatedButton(onPressed: () {}, child: const Text(''))
              ],
            ),
          )
        ],
      ),
    );
  }
}
