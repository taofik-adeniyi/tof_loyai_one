import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  final int count;
  const MyCard({super.key, required this.count, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 160,
      padding:
          const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0, bottom: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.emoji_events,
            color: Colors.yellow.shade900,
            size: 45,
          ),
          SizedBox(
            height: 25.0,
          ),
          Text('$count',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
          SizedBox(
            height: 10.0,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
