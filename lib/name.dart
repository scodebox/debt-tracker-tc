import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  String _name;
  double _amount;

  Name(this._name, this._amount);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            child: Icon(Icons.person),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            child: Text(
              _name,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            child: ElevatedButton(
              onPressed: () {
                print('Payment click');
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content:
                      Text("Kno click korchis? sobai jane tui dibina! -_-"),
                ));
              },
              child: Text("Pay ${_amount}"),
            ),
          ),
        ],
      ),
    );
  }
}
