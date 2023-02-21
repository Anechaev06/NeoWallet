// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final dynamic color;
  final String iconImagePath;

  const MyCard({
    super.key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
    required this.iconImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Balance",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Comfortaa",
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Image.asset(iconImagePath),
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              "\$$balance",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontFamily: "Comfortaa",
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Card Number
                Text(
                  cardNumber.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Comfortaa",
                  ),
                ),
                // Card Expiry Date
                Text(
                  "$expiryMonth/$expiryYear",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Comfortaa",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
