import 'package:flutter/material.dart';

class PaymentLoading extends StatelessWidget {
  final String providerImageUrl;
  const PaymentLoading({super.key, required this.providerImageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image.asset('assets/image/paystack_bg.png'),
        // Image.network('https://images.unsplash.com/photo-1689850969062-f7e0a6c45a4b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80'),
        // Image(
        //     image: const NetworkImage(
        //         'https://images.unsplash.com/photo-1689850969062-f7e0a6c45a4b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80')),
        Image(
          fit: BoxFit.cover,
          image: AssetImage(providerImageUrl),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        )
      ],
    );
  }
}
