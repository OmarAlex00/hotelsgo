import 'package:flutter/material.dart';

class FindHotelsButton extends StatelessWidget {
  const FindHotelsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'find hotels',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.search,
          color: Colors.white,
          size: 43,
        )
      ],
    );
  }
}
