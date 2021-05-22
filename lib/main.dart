import 'package:flutter/material.dart';

import 'name.dart';

double calculateInterest(double amount, var date, double interestRate) {
  var days = DateTime.now().difference(date).inDays;
  for (int i = 0; i < days; i++) {
    amount = (amount * (100 + interestRate)) / 100;
  }
  return (double.parse((amount).toStringAsFixed(2)));
}

void main() {
  var amountList = [
    calculateInterest(50.0, DateTime(2020, 11, 30), 1),
    calculateInterest(15.0, DateTime(2021, 5, 18), 1),
    calculateInterest(18000.0, DateTime(2019, 1, 1), 0.0263),
    30.0
  ];

  var total = 0.0;
  for (int i = 0; i < amountList.length; i++) {
    total += amountList[i];
  }

  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Debt Tracker TC'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Container(
                  width: 330.0,
                  height: 150.0,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Total Debt',
                        style: TextStyle(fontSize: 35.0, color: Colors.white),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        '${total}/-',
                        style: TextStyle(fontSize: 28.0, color: Colors.white),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: Colors.red,
                  )),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Debt List',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),

            // Names
            Name('Arnab Ghosh', amountList[0]),
            Name('Suvam Basak', amountList[1]),
            Name('Debraj Ghosh', amountList[2]),
            Name('Vodu', amountList[3]),
          ],
        ),
      ),
    ),
  );
}
