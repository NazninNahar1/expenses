import 'package:flutter/material.dart';

import '../model/transactions.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Transaction> transactionList = [
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
    return Container(
      height: MediaQuery.of(context).size.height * .6,
      child: ListView.builder(
        itemCount: transactionList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      width: 30,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.purple,
                        width: 2,
                      )),
                      child: Center(
                        child: Text(
                          transactionList[index].amount.toString()
                          ,
                          style: TextStyle(fontSize: 20, color: Colors.purple),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children:  [
                        Text(transactionList[index].title,
                            style: const TextStyle(
                                fontSize: 25,
                                color: Colors.purple,
                                fontWeight: FontWeight.bold)),
                        Text(DateFormat('y-MM-d').format(transactionList[index].date),
                            style:
                                TextStyle(fontSize: 20, color: Colors.purple),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
