// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Home',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: SvgPicture.asset('assets/analytics-icon.svg'),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset('assets/search-icon.svg'),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset('assets/more-icon.svg'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
