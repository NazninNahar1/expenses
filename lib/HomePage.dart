import 'package:expenses/weidgets/new_transaction.dart';
import 'package:expenses/weidgets/transaction_list.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Expenses'),
    ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(

              child: Column(children: const [
                NewTransaction(),
                SizedBox(height: 10,),
                TransactionList(),


      ],),
            ),
          ),
    );
  }
}
