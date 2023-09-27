import 'package:flutter/material.dart';

Color mainColor = const Color.fromRGBO(252, 62, 100, 1);

ColorScheme lightColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: mainColor,
    onSurface: Colors.black);
ColorScheme darkColorScheme = ColorScheme.fromSeed(
    seedColor: mainColor, brightness: Brightness.dark, onSurface: Colors.white);

final InputDecorationTheme lightInputDecoration = InputDecorationTheme(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.black),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.blue),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.black),
  ),
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.grey),
  ),
);

final InputDecorationTheme darkInputDecoration = InputDecorationTheme(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.white),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.blue),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.white),
  ),
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: Colors.grey[400]!),
  ),
);
