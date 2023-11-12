import 'package:flutter/material.dart';
import 'package:hotelsgo/core/text_styles.dart';
import 'package:hotelsgo/features/main_feature/presentation/second_screen.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          context: context,
          builder: (context) {
            return const SecondScreen();
          },
        );
      },
      child: Container(
          margin:
              const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
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
                '1 Room, 2 Adult, 0 Children',
                style: AppTextStyles.labelTextStyle,
              ),
              const Icon(Icons.expand_more)
            ],
          )),
    );
  }
}
