import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function onAddPressed;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction({this.onAddPressed});

  void _submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) return;

    onAddPressed(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => _submitData(),
              // onChanged: (value) => titleInput = value,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => _submitData(),
              // onChanged: (value) => amountInput = value,
            ),
            TextButton(
              child: Text('Add Transaction'),
              onPressed: _submitData,
              style: TextButton.styleFrom(
                primary: Colors.blueGrey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
