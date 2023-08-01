import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_loyai/theme/color.dart';

class CompletedTransaction extends StatefulWidget {
  const CompletedTransaction({super.key});

  @override
  State<CompletedTransaction> createState() => _CompletedTransactionState();
}

class _CompletedTransactionState extends State<CompletedTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            Center(
              child: Text(
                'Transaction Completed!',
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                )),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Center(
              child: Text(
                'Your airtime top up of 200 NGN is successful',
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                )),
              ),
            ),
            const SizedBox(
              height: 56.0,
            ),
            Center(
              child: Text(
                'Today\'s Reward Pool',
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                )),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 235.0,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Text(
                    'Wed, 12th March 2023',
                    style: TextStyle(
                      color: Color(0xFF0668D2),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    '₦322,000',
                    style: TextStyle(
                      color: Color(0xFF242424),
                      fontSize: 48,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text.rich(TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF242424),
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(text: 'You have'),
                        TextSpan(
                            text: ' 5 ',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF242424))),
                        TextSpan(text: 'chance to spin the wheel'),
                      ])),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    width: 90,
                    height: 56,
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF3DE858),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.electric_bolt,
                          color: Colors.white,
                          size: 32.0,
                        ),
                        Text(
                          '5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              // width: MediaQuery.of(context).size.width * 0.8,
              width: 358.0,
              height: 48.0,
              alignment: Alignment.center,
              // padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Text('Play Now',
                  style: TextStyle(
                    color: Color(0xFF0668D2),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
