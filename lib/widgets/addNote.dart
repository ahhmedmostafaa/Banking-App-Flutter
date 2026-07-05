// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key}); // Added Key parameter

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 32.0,
      left: 16.0,
      right: 16.0,
      child: Container(
        height: 44.0,
        width: 345.0,
        decoration: BoxDecoration(
          color: const Color(0xffe8e8e9),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Center(
          child: Text(
            'Add a Note',
            style: TextStyle(
              fontSize: 16.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
