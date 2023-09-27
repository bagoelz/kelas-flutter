import 'package:flutter/material.dart';
import 'package:kelas_flutter/shared/colorVariant.dart';
import 'package:kelas_flutter/view/adaptive.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Color.fromARGB(255, 253, 253, 253),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        inputDecorationTheme: lightInputDecoration,
        dividerColor: Colors.black,
        hintColor: Colors.grey,
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        dividerColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        hintColor: Colors.grey,
        inputDecorationTheme: darkInputDecoration,
        useMaterial3: true,
      ),
      title: 'Belajar Flutter',
      debugShowCheckedModeBanner: false,
      home: ResponsivePage()));
}
