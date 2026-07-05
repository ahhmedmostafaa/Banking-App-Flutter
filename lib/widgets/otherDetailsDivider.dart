// ignore_for_file: file_names

import 'package:flutter/material.dart';

class OtherDetailsDivider extends StatelessWidget {
  const OtherDetailsDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Divider(
        color: Colors.grey.withOpacity(0.5),
        thickness: 0.5,
        endIndent: 16,
        indent: 16,
      ),
    );
  }
}
