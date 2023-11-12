import 'package:flutter/material.dart';
import 'package:hotelsgo/core/constants.dart';

class FirstScreenMainView extends StatelessWidget {
  const FirstScreenMainView({
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
