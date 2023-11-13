import 'package:flutter/material.dart';
import 'package:hotelsgo/core/text_styles.dart';

class CustomDateRange extends StatelessWidget {
  const CustomDateRange({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Container(
        padding:
            const EdgeInsets.only(left: 50, right: 10, top: 10, bottom: 10),
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color(0xff2473BD), style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                showDateRangePicker(
                    context: context,
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2030));
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '2023-11-10',
                    style: AppTextStyles.dateTextStyle,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('==>', style: AppTextStyles.dateTextStyle),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('2023-11-11', style: AppTextStyles.dateTextStyle),
                ],
              ),
            ),
            const Icon(
              Icons.close,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
