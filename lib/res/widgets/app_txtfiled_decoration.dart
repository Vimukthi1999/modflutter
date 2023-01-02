import 'package:flutter/material.dart';

InputDecoration appTxtfiledDecoration(String hint) {
  return InputDecoration(
    border: const OutlineInputBorder(),
    focusedBorder: const OutlineInputBorder(),
    hintText: hint,
  );
}

