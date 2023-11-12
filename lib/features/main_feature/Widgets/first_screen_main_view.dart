import 'package:flutter/material.dart';
import 'package:hotelsgo/core/assets_manager.dart';
import 'package:hotelsgo/features/main_feature/Widgets/custom_date_range.dart';
import 'package:hotelsgo/features/main_feature/Widgets/custom_text_field.dart';
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
        child: Center(
            child: Container(
          height: 450,
          width: 350,
          decoration: BoxDecoration(
              color: const Color(0xffEC8B24),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              Container(
                height: 380,
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
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomTextField(
                        label: 'Select city', placeholder: 'Select a city'),
                    const CustomDateRange(),
                    DropdownButtonFormField(
                      items: List.empty(),
                      onChanged: (value) {},
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('date picker')),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'find hotels',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 70,
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
