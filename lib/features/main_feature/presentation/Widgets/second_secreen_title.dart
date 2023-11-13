import 'package:flutter/material.dart';
import 'package:hotelsgo/core/text_styles.dart';

class SecondScreenTitle extends StatelessWidget {
  const SecondScreenTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(flex: 1),
          Center(
            child: Text(
              'Rooms and Guests',
              style: AppTextStyles.secondScreenTitleTextStyle,
            ),
          ),
          const Spacer(flex: 1),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.close,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
