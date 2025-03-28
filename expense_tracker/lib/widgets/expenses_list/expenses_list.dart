import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    //use the ListView.builder constructor to build items only when they are visible or about to become visible
    //therefore, we pass the length of our expense list and create an anonymous itemBuilder function to build a
    //Text widget that has the title of the expense at the index specified by Flutter when it calls our anonymous
    //function.
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpenseItem(expenses[index]),
      );
  }
}