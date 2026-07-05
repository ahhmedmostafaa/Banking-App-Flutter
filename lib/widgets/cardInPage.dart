// ignore_for_file: file_names

import 'package:banking_app/utilities/themeStyles.dart';
import 'package:flutter/material.dart';

class CardInPage extends StatelessWidget {
  final String title;
  final String subTitles;
  final String price;
  final String letter;
  final Color color;

  const CardInPage({super.key, 
    required this.title,
    required this.subTitles,
    required this.price,
    required this.letter,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: SizedBox(
        height: 62.0,
        width: 343.0,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 44.0,
                      width: 44.0,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      child: Center(
                        child: Text(
                          letter,
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: ThemeStyles.otherDetailsPrimary),
                        Text(subTitles, style: ThemeStyles.otherDetailsSecondary),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(price, style: const TextStyle(color: Colors.red)),
                    const SizedBox(width: 4.0),
                    const Icon(Icons.keyboard_arrow_right),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
