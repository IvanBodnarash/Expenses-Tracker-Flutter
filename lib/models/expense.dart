import 'package:flutter/material.dart';

import 'package:uuid/uuid.dart';

import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

// UUID - Package to generate unique id

const uuid = Uuid();

enum Category { food, travel, leisure, work } // It will be a custom type

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
