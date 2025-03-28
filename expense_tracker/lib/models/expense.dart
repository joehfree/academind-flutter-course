import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

//create utility object to format dates
final formatter = DateFormat.yMd();

//create utility object to provide unique IDs
const uuid = Uuid();

enum Category {
  food,
  travel,
  leisure,
  work
}

//create a map of icons to categories
const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({required this.title, required this.amount, required this.date, required this.category})
    : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    //we can use our formatter object to format the date
    return formatter.format(date);
  }
}
