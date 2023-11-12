import 'package:flutter/material.dart';

class FindHotelsButton extends StatelessWidget {
  const FindHotelsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
    );
  }
}
