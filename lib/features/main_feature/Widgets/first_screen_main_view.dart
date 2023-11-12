import 'package:flutter/material.dart';
import 'package:hotelsgo/core/assets_manager.dart';
import 'package:hotelsgo/features/main_feature/Widgets/custom_button.dart';
import 'package:hotelsgo/features/main_feature/Widgets/custom_date_range.dart';
import 'package:hotelsgo/features/main_feature/Widgets/custom_ddl.dart';
import 'package:hotelsgo/features/main_feature/Widgets/custom_text_field.dart';
import 'package:hotelsgo/features/main_feature/Widgets/first_screen_title_container.dart';

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
      child: Column(
        children: [
          const Spacer(
            flex: 30,
          ),
          const FirstScreenTitle(),
          Container(
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
                        begin: Alignment
                            .centerLeft, // Define the gradient start point
                        end: Alignment
                            .centerRight, // Define the gradient end point
                      ),
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: [
                      CustomTextField(
                          label: 'Select city', placeholder: 'Select a city'),
                      const CustomDateRange(),
                      const CustomDDL(),
                      const CustomButton(),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'find hotels',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
