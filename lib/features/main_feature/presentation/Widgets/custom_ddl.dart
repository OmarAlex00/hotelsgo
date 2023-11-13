import 'package:flutter/material.dart';
import 'package:hotelsgo/core/text_styles.dart';

class CustomDDL extends StatelessWidget {
  const CustomDDL({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
          padding: const EdgeInsets.only(right: 15, left: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: DropdownButton(
            borderRadius: BorderRadius.circular(8),
            icon: const Icon(Icons.expand_more),
            items: const [
              DropdownMenuItem(
                child: Text('Select Nationality'),
              )
            ],
            onChanged: (value) {},
            style: AppTextStyles.labelTextStyle,
          )),
    );
  }
}
