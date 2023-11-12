import 'package:flutter/material.dart';
import 'package:hotelsgo/core/assets_manager.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/first_screen_title_shape.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/hotels_form_main.dart';

class FirstScreenMainView extends StatelessWidget {
  const FirstScreenMainView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsManager.backgroundImage),
        ),
      ),
      child: const Column(
        children: [
          Spacer(flex: 10),
          FirstScreenTitle(),
          HotelsFormMain(),
          Spacer(flex: 1)
        ],
      ),
    );
  }
}
