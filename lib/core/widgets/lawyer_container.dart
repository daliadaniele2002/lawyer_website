import 'package:flutter/material.dart';

class LawyerContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsets? padding;
  final BoxDecoration? decoration;

  const LawyerContainer(
      {super.key, required this.child, this.color, this.padding, this.decoration});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        decoration: decoration,
        color: color,
        child: Center(
          child: Container(
            padding: padding,
            constraints: const BoxConstraints(maxWidth: 1320),
            child: child,
          ),
        ),
      ),
    );
  }
}
