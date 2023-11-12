import 'package:flutter/material.dart';
import 'package:hotelsgo/core/custom_border_styles.dart';
import 'package:hotelsgo/core/text_styles.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.label,
      required this.placeholder,
      this.onChange});
  final String label;
  final String placeholder;
  Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
          onChanged: onChange,
          // ignore: body_might_complete_normally_nullable
          validator: (value) {
            if (value!.isEmpty) {
              return 'This field is Required';
            }
          },
          style: AppTextStyles.hintTextStyle,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.all(18),
            enabledBorder: AppTextFieldBorderStyles.enabledBorder,
            label: Center(child: Text(label)),
            labelStyle: AppTextStyles.labelTextStyle,
            hintText: placeholder,
            hintStyle: AppTextStyles.hintTextStyle,
            border: AppTextFieldBorderStyles.enabledBorder,
          )),
    );
  }
}