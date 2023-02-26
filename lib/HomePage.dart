import 'package:expenses/weidgets/new_transaction.dart';
import 'package:expenses/weidgets/transaction_list.dart';
import 'package:expenses/weidgets/userTransaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'model/transactions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Transaction> _transactionList = [
    Transaction(
      id: 't1',
      title: 'New Shoe',
      amount: 999.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New Dress',
      amount: 199.99,
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
      _transactionList.add(newTx);
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Expenses'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return NewTransaction(_addNewTransaction);
                });
          },
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.purple,
                ),
                TransactionList(
                  transactionList: _transactionList,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
