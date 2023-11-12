import 'package:flutter/material.dart';
import 'package:hotelsgo/core/text_styles.dart';
import 'package:hotelsgo/features/main_feature/Widgets/trapezoid_container.dart';

class FirstScreenTitle extends StatelessWidget {
  const FirstScreenTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Stack(
          children: [
            const TrapezoidContainer(
              width: 202,
              height: 60,
              color: Colors.white,
            ),
            const TrapezoidContainer(
              width: 200,
              height: 60,
              color: Color(0xff196CBA),
            ),
            Positioned(
              left: 10,
              top: 20,
              child: Text(
                'Hotels Search',
                style: AppTextStyles.titleTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
