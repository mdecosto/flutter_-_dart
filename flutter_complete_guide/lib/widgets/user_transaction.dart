import 'package:flutter/material.dart';

import './transaction_list.dart';
import './new_transaction.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Snacks',
      amount: 12.53,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Phone',
      amount: 799.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Load',
      amount: 250.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Movie',
      amount: 10.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Electric Bill',
      amount: 75.27,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Water Bill',
      amount: 15.72,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
