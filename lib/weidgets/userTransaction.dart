// import 'package:expenses/weidgets/transaction_list.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// import '../model/transactions.dart';
// import 'new_transaction.dart';
//
// class UserTransAction extends StatefulWidget {
//   const UserTransAction({Key? key}) : super(key: key);
//
//   @override
//   State<UserTransAction> createState() => _UserTransActionState();
// }
//
// class _UserTransActionState extends State<UserTransAction> {
//   final titleController = TextEditingController();
//   final amountController = TextEditingController();
//   final List<Transaction> _transactionList = [
//     Transaction(
//       id: 't1',
//       title: 'New Shoe',
//       amount: 999.99,
//       date: DateTime.now(),
//     ),
//     Transaction(
//       id: 't2',
//       title: 'New Dress',
//       amount: 199.99,
//       date: DateTime.now(),
//     ),
//   ];
//
//   void _addTransaction() {
//     String title = titleController.text;
//     double amount = double.parse(amountController.text);
//
//     var tx = Transaction(
//         id: '',
//         title: titleController.text,
//         amount: amount,
//         date: DateTime.now());
//     setState(() {
//       if(title==''||amount<=0||amountController.text==''){
//         return;
//       }
//       _transactionList.add(tx);
//       titleController.text='';
//       amountController.text='';
//       SystemChannels.textInput.invokeMethod('TextInput.hide');
//
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         NewTransaction(
//           titleController: titleController,
//           amountController: amountController,
//           addOnTapp: _addTransaction,
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         TransactionList(
//           transactionList: _transactionList,
//         ),
//       ],
//     );
//   }
// }
