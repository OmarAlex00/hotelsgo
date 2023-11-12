import 'package:flutter/material.dart';

class TrapezoidContainer extends StatelessWidget {
  const TrapezoidContainer(
      {super.key,
      required this.width,
      required this.height,
      required this.color});
  final double width;
  final double height;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TrapezoidClipper(),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          border: const Border(
            right: BorderSide(
              color: Colors.white,
              width: 2.0, // You can adjust the width as needed
            ),
          ),
        ),
      ),
    );
  }
}

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(size.width * 0.25, 0) // Top left corner
      ..lineTo(size.width * 0.75, 0) // Top right corner
      ..lineTo(size.width, size.height * 1) // Bottom right corner
      ..lineTo(0, size.height * 1) // Bottom left corner
      ..close(); // Close the path to create the desired shape

    return path;
  }

  @override
  bool shouldReclip(TrapezoidClipper oldClipper) => false;
}
