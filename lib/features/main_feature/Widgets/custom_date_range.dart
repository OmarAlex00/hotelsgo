import 'package:flutter/material.dart';

class CustomDateRange extends StatelessWidget {
  const CustomDateRange({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: const Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '2023-11-10',
                  style: TextStyle(),
                ),
                SizedBox(
                  width: 50,
                ),
                Text('==>'),
                Text('2023-11-11'),
              ],
            ),
            Icon(Icons.close)
          ],
        ),
      ),
    );
  }
}
