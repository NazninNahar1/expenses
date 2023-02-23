import 'package:flutter/material.dart';
class NewTransaction extends StatefulWidget {
  const NewTransaction({Key? key}) : super(key: key);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController =TextEditingController();
  final amountController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Title'),

            controller: titleController,

          ),
          const SizedBox(height: 10,),
          TextField(
            decoration: const InputDecoration(labelText: 'Amount'),

            controller: amountController,

          ),
          ElevatedButton(onPressed: (){}, child: Text('Add Expense'))


        ],



    ));
  }
}
