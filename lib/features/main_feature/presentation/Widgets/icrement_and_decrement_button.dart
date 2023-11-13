import 'package:flutter/material.dart';
import 'package:hotelsgo/core/colors.dart';

class IncrementAndDecrementButton extends StatelessWidget {
  const IncrementAndDecrementButton({
    super.key,
    required this.isIncrement,
    required this.isActive,
    this.onTap,
  });
  final bool isIncrement;
  final bool isActive;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        decoration: BoxDecoration(
            border: Border.all(
                color: isActive ? AppColors.primary : AppColors.inActive),
            borderRadius: BorderRadius.circular(30)),
        child: isIncrement
            ? Icon(
                Icons.add,
                color: isActive ? AppColors.primary : AppColors.inActive,
                size: 32,
              )
            : Icon(
                Icons.remove,
                color: isActive ? AppColors.primary : AppColors.inActive,
                size: 32,
              ),
      ),
    );
  }
}
