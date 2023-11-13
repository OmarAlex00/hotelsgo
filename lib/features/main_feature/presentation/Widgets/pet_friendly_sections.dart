import 'package:flutter/material.dart';
import 'package:hotelsgo/core/custom_box_decoration.dart';
import 'package:hotelsgo/core/text_styles.dart';

class PetFriendlySection extends StatelessWidget {
  const PetFriendlySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxDecorationsStyles.boxDecoration,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Pet-friendly',
                    style: AppTextStyles.secondScreenNormalTextStyle,
                  ),
                  const Icon(Icons.info_outline)
                ],
              ),
              Text(
                'Only shows stays that allow pets',
                style: AppTextStyles.secondScreenHintTextStyle,
              )
            ],
          ),
          ElevatedButton(onPressed: () {}, child: const Text(''))
        ],
      ),
    );
  }
}
