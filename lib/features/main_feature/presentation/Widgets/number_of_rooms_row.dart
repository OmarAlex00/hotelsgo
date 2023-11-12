import 'package:flutter/material.dart';
import 'package:hotelsgo/core/custom_box_decoration.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/hotel_form_row.dart';

class NumberOfRoomsRow extends StatelessWidget {
  const NumberOfRoomsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxDecorationsStyles.boxDecoration,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: const HotelFormRow(title: 'Rooms', number: 1),
    );
  }
}
