import 'package:flutter/material.dart';
import 'package:new_loyai/theme/color.dart';
import 'package:new_loyai/widget/button.dart';

class WheelScreen extends StatefulWidget {
  const WheelScreen({super.key});

  @override
  State<WheelScreen> createState() => _WheelScreenState();
}

class _WheelScreenState extends State<WheelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 116,
                padding: const EdgeInsets.only(top: 60, left: 10),
                color: AppColor.primary,
                child: const Text('Wheel of Fortune',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            Positioned(
              top: 116,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 116,
                color: Colors.grey.shade300,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 400,
                      decoration: BoxDecoration(
                          border: Border.all(width: 10, color: Colors.white),
                          color: AppColor.primary,
                          shape: BoxShape.circle),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Button(
                      bgColor: AppColor.primary,
                      child: Text('Click to Spin Wheel (1 😸 )',
                          style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Button(
                      bgColor: Colors.grey.shade600,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.alarm,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('View History',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
