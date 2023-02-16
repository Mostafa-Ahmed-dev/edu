import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      required this.child,
      required this.hieght,
      required this.width,
      required this.ontap,
      this.color = Colors.white});
  final Widget child;
  final double hieght;
  final double width;
  final VoidCallback ontap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Ink(
      height: hieght,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 2,
            spreadRadius: 0.05,
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: ontap,
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
