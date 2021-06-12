import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../UI/adaptive_flat_button.dart';

class NewTransactionForm extends StatefulWidget {
  final Function onAddPressed;

  NewTransactionForm({this.onAddPressed});

  @override
  _NewTransactionFormState createState() => _NewTransactionFormState();
}

class _NewTransactionFormState extends State<NewTransactionForm> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime _selectedDate;

  void _submitData() {
    if (_amountController.text.isEmpty) return;

    final enteredTitle = _titleController.text;
    final enteredAmount = double.parse(_amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0 || _selectedDate == null)
      return;

    widget.onAddPressed(enteredTitle, enteredAmount, _selectedDate);

    Navigator.of(context).pop();
  }

  void _summonDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(new DateTime.now().year),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) return;
      setState(() => _selectedDate = pickedDate);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              // CupertinoTextField(
              //   placeholder: 'Title',
              // ),
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: _titleController,
                onSubmitted: (_) => _submitData(),
                // onChanged: (value) => titleInput = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: _amountController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                onSubmitted: (_) => _submitData(),
                // onChanged: (value) => amountInput = value,
              ),
              Container(
                height: 70,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _selectedDate == null
                            ? 'No Date Chosen!'
                            : 'Picked Date: ${DateFormat.yMMMd().format(_selectedDate)}',
                      ),
                    ),
                    AdaptiveFlatButton(
                      text: 'Chosse Date',
                      handler: _summonDatePicker,
                    )
                  ],
                ),
              ),
              ElevatedButton(
                child: Text('Add Transaction'),
                onPressed: _submitData,
                style: OutlinedButton.styleFrom(
                  primary: Theme.of(context).textTheme.button.color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
