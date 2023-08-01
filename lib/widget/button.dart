import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Widget child;
  final Color bgColor;
  const Button({super.key, required this.child, this.bgColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.8,
      width: 358.0,
      height: 48.0,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 5, left: 20.0, right: 20, bottom: 5),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: child,
    );
  }
}
