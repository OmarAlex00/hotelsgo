import 'package:flutter/material.dart';
import 'package:hotelsgo/core/constants.dart';

class FirstScreenContent extends StatelessWidget {
  const FirstScreenContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage(AssetsManager.backgroundImage))),
    );
  }
}
