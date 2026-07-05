// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:banking_app/components/appbar.dart';
import 'package:banking_app/components/cards.dart';
import 'package:banking_app/components/recentTransaction.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          Appbar(),
          CardsList(),
          RecentTransactions(),
        ],
      ),
    );
  }
}
