import 'package:flutter/material.dart';

class IncrementAndDecrementButton extends StatelessWidget {
  const IncrementAndDecrementButton({super.key, required this.isIncrement});
  final bool isIncrement;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff007CAB)),
          borderRadius: BorderRadius.circular(30)),
      child: isIncrement
          ? const Icon(
              Icons.add,
              color: Color(0xff007CAB),
              size: 32,
            )
          : const Icon(
              Icons.remove,
              color: Color(0xff007CAB),
              size: 32,
            ),
    );
  }
}
