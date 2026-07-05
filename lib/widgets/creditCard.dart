// ignore_for_file: file_names, library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:banking_app/utilities/themeColors.dart';
import 'package:banking_app/utilities/themeStyles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({super.key});

  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  bool isAmountVisible = false;

  void toggleAmountVisibility() {
    setState(() {
       isAmountVisible = !isAmountVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            ThemeColors.black.withOpacity(0.8),
            ThemeColors.black.withOpacity(0.6),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isAmountVisible
                        ? Text(
                            '10.000,30 £',
                            style: ThemeStyles.cardMoney.copyWith(color: Colors.white),
                          )
                        : Container(), // Hide or show based on isAmountVisible
                    GestureDetector(
                      onTap: toggleAmountVisibility,
                      child: SvgPicture.asset(
                        'assets/hide-icon.svg',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Magent Black',
                      style: ThemeStyles.cardDetails.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        Text(
                          '4567',
                          style: ThemeStyles.cardDetails.copyWith(color: Colors.white),
                        ),
                        const SizedBox(width: 10.0),
                        SvgPicture.asset(
                          'assets/card-dots.svg',
                          color: Colors.white,
                        ),
                        const SizedBox(width: 10.0),
                        SvgPicture.asset(
                          'assets/card-dots.svg',
                          color: Colors.white,
                        ),
                        const SizedBox(width: 10.0),
                        Text(
                          '8912',
                          style: ThemeStyles.cardDetails.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10, // Adjust the bottom position
            right: 20, // Adjust the right position
            child: Image.asset(
              'assets/chip.png',
              height: 40,
              width: 40,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 20,
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/visa-logo.svg',
                  height: 30,
                ),
                const SizedBox(width: 10),
                SvgPicture.asset(
                  'assets/mastercard-logo.svg',
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
