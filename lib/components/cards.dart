// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:banking_app/utilities/themeColors.dart';
import 'package:banking_app/utilities/themeStyles.dart';
import 'package:banking_app/widgets/creditCard.dart';
import 'package:flutter/material.dart';

class CardsList extends StatefulWidget {
  const CardsList({super.key});

  @override
  State<CardsList> createState() => _CardsListState();
}

class _CardsListState extends State<CardsList> {
  int _currentCard = 0;

  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentCard = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 32.0, 15.0, 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Your Cards', style: ThemeStyles.primaryTitle),
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
        Container(
          height: 246.0,
          child: PageView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            onPageChanged: _onPageChanged,
            itemBuilder: (context, position) => CreditCard(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 5; i++)
                DotIndicator(isActive: _currentCard == i),
            ],
          ),
        )
      ],
    );
  }
}

class DotIndicator extends StatelessWidget {
  final bool isActive;

  const DotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        height: 8.0,
        width: 8.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: isActive ? ThemeColors.black : ThemeColors.grey,
        ),
      ),
    );
  }
}
