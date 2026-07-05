// ignore_for_file: file_names, prefer_const_constructors

import 'package:banking_app/utilities/themeStyles.dart';
import 'package:banking_app/widgets/transactionCard.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, bottom: 16.0, top: 32.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Transactions', style: ThemeStyles.primaryTitle),
                Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16.0,
                      ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: const [
                TransactionCard(
                  color: Colors.black,
                  letter: 'F',
                  title: 'Finance',
                  subTitles: 'Finance Landing Page',
                  price: '- £487.99',
                ),
                TransactionCard(
                  color: Color(0xfffe695d),
                  letter: 'H',
                  title: 'Hotel',
                  subTitles: 'Hotel Booking page',
                  price: '- £380.99',
                ),
                TransactionCard(
                  color: Color(0xff103289),
                  letter: 'A',
                  title: 'Amazon',
                  subTitles: 'Amazon shopping',
                  price: '- £50.20',
                ),
                TransactionCard(
                  color: Colors.yellow,
                  letter: 'N',
                  title: 'Noon',
                  subTitles: 'Noon shopping',
                  price: '- £100.00',
                ),
                TransactionCard(
                  color: Colors.greenAccent,
                  letter: 'G',
                  title: 'Green Market',
                  subTitles: 'Green Market shopping',
                  price: '- £260.99',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
