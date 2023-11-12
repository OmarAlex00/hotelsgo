import 'package:flutter/material.dart';
import 'package:hotelsgo/core/constants.dart';
import 'package:hotelsgo/features/main_feature/Widgets/first_screen_title_container.dart';

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
            image: AssetImage(AssetsManager.backgroundImage),
          ),
        ),
        child: const Center(child: FirstScreenTitle()));
  }
}
