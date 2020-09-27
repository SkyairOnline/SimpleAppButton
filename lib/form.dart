import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  int _flag = 0;

  void _flagHideAndSeek() {
    if (_flag == 0) {
      setState(() {
        _flag = 1;
      });
    } else {
      setState(() {
        _flag = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Name',
            ),
          ),
          RaisedButton(
            onPressed: _flagHideAndSeek,
            color: Theme.of(context).primaryColor,
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            child: _flag == 1
                ? TextFormField(
                    enabled: _flag == 1,
                    decoration: InputDecoration(
                      labelText: 'Name',
                    ),
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
