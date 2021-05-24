import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function onAddPressed;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction({this.onAddPressed});

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
              // onChanged: (value) => titleInput = value,
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (value) => amountInput = value,
              controller: amountController,
            ),
            TextButton(
              child: Text('Add Transaction'),
              onPressed: () => onAddPressed(
                  titleController.text, double.parse(amountController.text)),
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
