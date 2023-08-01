import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_loyai/theme/color.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }

    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 30, 15, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Welcome to Loyai',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Center(
                    child: Text(
                      'Kindly enter your details to buy airtime ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    height: 48.0,
                    margin: const EdgeInsets.all(20.0),
                    decoration: const BoxDecoration(
                        color: Color(0xFF1782F4),
                        borderRadius: BorderRadius.all(Radius.circular(24.0))),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: 'Enter Phone Number',
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.all(10.0),
                    // decoration: BoxDecoration(color: Colors.amber),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF1782F4),
                            shape: OvalBorder(),
                          ),
                          child: const Icon(Icons.remove_circle_outline,
                              color: Colors.white),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 48.0,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF1782F4),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFF1565C0)),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '100 NGN',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0),
                            ),
                          ),
                        ),
                        // IconButs_outlined))
                        Container(
                          width: 48,
                          height: 48,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF1782F4),
                            shape: OvalBorder(),
                          ),
                          child: const Icon(Icons.control_point,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.electric_bolt,
                          color: Color(0xFF3DE858),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text('2 Chances',
                            style: TextStyle(
                              color: Color(0xFF3DE858),
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Checkbox(
                      //     checkColor: Colors.white,
                      //     fillColor:
                      //         MaterialStateProperty.resolveWith(getColor),
                      //     value: isChecked,
                      //     onChanged: (bool? value) {
                      //       setState(() {
                      //         isChecked = value!;
                      //       });
                      //     }),
                      Container(
                          width: 24,
                          height: 24,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          )),

                      const SizedBox(width: 20.0),

                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Text.rich(TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                            ),
                            children: [
                              TextSpan(
                                text: 'I have read and agree to the T',
                              ),
                              TextSpan(
                                  text: 'erms and Conditions',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ))
                            ])),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Center(
                    child: Text.rich(TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                        ),
                        children: [
                          TextSpan(text: 'To see how it works,'),
                          TextSpan(
                              text: 'Tap Here',
                              style: TextStyle(fontWeight: FontWeight.w500))
                        ])),
                  )
                ],
              ))),
    );
  }
}
