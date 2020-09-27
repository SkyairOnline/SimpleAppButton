import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  int _index = 1;

  Widget _textField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Name',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: _index,
            itemBuilder: (context, index) {
              return _textField();
            },
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                _index++;
              });
            },
            color: Theme.of(context).primaryColor,
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
