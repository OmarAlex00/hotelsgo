import 'package:flutter/material.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/number_of_rooms_row.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/pet_friendly_sections.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/room_one_container.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/second_secreen_title.dart';

class SecondScreenContent extends StatelessWidget {
  const SecondScreenContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SecondScreenTitle(),
        NumberOfRoomsRow(),
        Room1Container(),
        PetFriendlySection()
      ],
    );
  }
}
