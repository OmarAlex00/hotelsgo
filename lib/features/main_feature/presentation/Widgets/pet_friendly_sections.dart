import 'package:flutter/material.dart';
import 'package:hotelsgo/core/custom_box_decoration.dart';
import 'package:hotelsgo/core/text_styles.dart';
import 'package:hotelsgo/features/main_feature/presentation/Widgets/pet_freindly_toggle.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Pet-friendly',
                    style: AppTextStyles.secondScreenNormalTextStyle,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Tooltip(
                      triggerMode: TooltipTriggerMode.tap,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      message: 'Allow pets ?',
                      child: Icon(Icons.info_outline))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Only shows stays that allow pets',
                style: AppTextStyles.secondScreenHintTextStyle,
              ),
            ],
          ),
          const PetFriendlyToggle()
        ],
      ),
    );
  }
}
