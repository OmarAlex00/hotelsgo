import 'package:flutter/material.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/second_screen_content.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .92,
      decoration: BoxDecoration(
          color: const Color(0xffEBECED),
          borderRadius: BorderRadius.circular(16)),
      child: const SecondScreenContent(),
    );
  }
}
