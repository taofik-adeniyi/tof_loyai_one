import 'package:flutter/material.dart';
import 'package:new_loyai/theme/color.dart';
import 'package:new_loyai/widget/button.dart';
import 'package:new_loyai/widget/card.dart';
import 'package:new_loyai/widget/winning_type.dart';

class RedeemScreen extends StatefulWidget {
  const RedeemScreen({super.key});

  @override
  State<RedeemScreen> createState() => _RedeemScreenState();
}

class _RedeemScreenState extends State<RedeemScreen> {
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
              child: const Text('Redeem Winnings',
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
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyCard(count: 0, title: 'Today\'s Winnings 🥰'),
                        MyCard(count: 0, title: 'Previous Winners')
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade600,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: Text(
                          'Your Winnings',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const WinningType(
                        typeTitle: 'Cash (N)', value: Text('0 N')),
                    const WinningType(
                        typeTitle: 'Coin', value: Text('0 :smile: ')),
                    const WinningType(
                        typeTitle: 'Vouchers', value: Text('0 Vouchers')),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Button(
                      bgColor: Colors.white,
                      child: Text('Play Again',
                          style: TextStyle(
                              color: AppColor.primary,
                              fontWeight: FontWeight.w500)),
                    )
                  ],
                ),
              ))
        ],
      )),
    );
  }
}
