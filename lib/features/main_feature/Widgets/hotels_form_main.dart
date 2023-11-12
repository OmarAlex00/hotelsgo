import 'package:flutter/material.dart';
import 'package:hotelsgo/features/main_feature/Widgets/find_hotels.dart';
import 'package:hotelsgo/features/main_feature/Widgets/hotels_form_content.dart';

class HotelsFormMain extends StatelessWidget {
  const HotelsFormMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .355,
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
          color: const Color(0xffEC8B24),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff1276BB),
                    Color(0xff4FB6FD)
                  ], // Specify your desired gradient colors
                  begin:
                      Alignment.centerLeft, // Define the gradient start point
                  end: Alignment.centerRight, // Define the gradient end point
                ),
                borderRadius: BorderRadius.circular(16)),
            child: const HotelsFormContent(),
          ),
          const FindHotelsButton(),
        ],
      ),
    );
  }
}
