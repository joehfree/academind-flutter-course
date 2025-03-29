import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
  runApp(
    MaterialApp(
      //we use copyWith so we can override some stuff without having to completely configure the whole ThemeData
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        //again here we're only overriding a couple things instead of creating a whole new AppBarTheme
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
      ),
      home: Expenses(),
    ),
  );
}
