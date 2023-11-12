import 'package:flutter/material.dart';
import 'package:hotelsgo/features/main_feature/Widgets/custom_button.dart';
import 'package:hotelsgo/features/main_feature/Widgets/custom_date_range.dart';
import 'package:hotelsgo/features/main_feature/Widgets/custom_ddl.dart';
import 'package:hotelsgo/features/main_feature/Widgets/custom_text_field.dart';

class HotelsFormContent extends StatelessWidget {
  const HotelsFormContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(label: 'Select city', placeholder: 'Select a city'),
        const CustomDateRange(),
        const CustomDDL(),
        const CustomButton(),
      ],
    );
  }
}
