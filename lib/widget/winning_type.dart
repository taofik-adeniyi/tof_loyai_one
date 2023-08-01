import 'package:flutter/material.dart';

class WinningType extends StatelessWidget {
  final String typeTitle;
  final Widget value;
  const WinningType({super.key, required this.typeTitle, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(typeTitle), value],
      ),
    );
  }
}
