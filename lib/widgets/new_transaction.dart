import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // const NewTransaction({ Key? key }) : super(key: key);

  // String titleInput;
  // String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function _addNewTransaction;

  NewTransaction(this._addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleController,
            // onChanged: (val) {
            //   titleInput = val;
            // },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: amountController,
            // onChanged: (val) => amountInput = val,
          ),
          FlatButton(
            onPressed: () {
              _addNewTransaction(titleController.text, amountController.text);
            },
            child: Text('Add Transaction'),
            textColor: Colors.purple,
          )
        ],
      ),
    ));
  }
}
