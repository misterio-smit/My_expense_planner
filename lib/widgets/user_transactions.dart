import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './transction_list.dart';
import './new_transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shose',
      amount: 59.49,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.69,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Groceries',
      amount: 18.69,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String txTitle, double amount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txTitle,
      amount: amount,
      date: DateTime.now(),
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NewTrancaction(_addNewTransaction),
      TransactionList(_userTransactions),
    ]);
  }
}
