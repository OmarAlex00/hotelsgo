import 'package:flutter/material.dart';
import 'package:hotelsgo/features/main_feature/Widgets/trapezoid_container.dart';

class FirstScreenTitle extends StatelessWidget {
  const FirstScreenTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        TrapezoidContainer(
          width: 255,
          height: 100,
          color: Colors.white,
        ),
        TrapezoidContainer(
          width: 250,
          height: 100,
          color: Color(0xff196CBA),
        ),
      ],
    );
  }
}
