import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class CustomProfileDottedBorderContainer extends StatelessWidget {
  final double size; // Diameter of the circle
  final Color borderColor; // Color of the dotted border
  final double borderWidth; // Thickness of the dotted border
  final Widget? child; // Optional child widget inside the container

  const CustomProfileDottedBorderContainer({
    super.key,
    this.size = 100.0, // Default size
    this.borderColor = Colors.black, // Default border color
    this.borderWidth = 2.0, // Default border width
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.Circle,
      // Makes the border circular
      color: borderColor,
      strokeWidth: borderWidth,
      dashPattern: const [6, 3],
      // Length of dashes and spaces
      child: SizedBox(
        height: size,
        width: size,
        child: Center(
          child: child, // Optional content inside the circle
        ),
      ),
    );
  }
}
