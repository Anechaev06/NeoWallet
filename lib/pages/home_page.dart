// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_random_app/utils/my_button.dart';
import 'package:flutter_random_app/utils/my_card.dart';
import 'package:flutter_random_app/utils/my_list_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // pageController
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 10),
          //AppBar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "My",
                      style: TextStyle(
                          fontFamily: "Comfortaa",
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Cards",
                      style: TextStyle(
                        fontFamily: "Comfortaa",
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[100],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),

          SizedBox(height: 30),

          // Cards
          SizedBox(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: 5250.20,
                  cardNumber: 12345678,
                  color: Colors.deepPurple[400],
                  expiryMonth: 1,
                  expiryYear: 31,
                  iconImagePath: 'icons/visa.png',
                ),
                MyCard(
                  balance: 4201.00,
                  cardNumber: 12345678,
                  color: Colors.deepOrange[300],
                  expiryMonth: 2,
                  expiryYear: 31,
                  iconImagePath: 'icons/master_card.png',
                ),
                MyCard(
                  balance: 2311.00,
                  cardNumber: 12345678,
                  color: Colors.green[300],
                  expiryMonth: 3,
                  expiryYear: 31,
                  iconImagePath: 'icons/visa.png',
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
          ),

          SizedBox(height: 30),

          // 3 Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // send button
                Mybutton(
                  iconImagePath: "icons/send.png",
                  buttonText: "Send",
                ),

                // pay button
                Mybutton(
                  iconImagePath: "icons/credit-card.png",
                  buttonText: "Pay",
                ),

                // bills button
                Mybutton(
                  iconImagePath: "icons/bill.png",
                  buttonText: "Bills",
                )
              ],
            ),
          ),

          SizedBox(height: 30),

          // 2 Tiles
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                // statistics
                MyListTile(
                  icon: Icon(
                    Icons.query_stats,
                    size: 30,
                  ),
                  tileTitle: "Statistics",
                  tileSubTitle: "Payments & Income",
                ),

                // transactions
                MyListTile(
                  icon: Icon(
                    Icons.receipt_long_outlined,
                    size: 30,
                  ),
                  tileTitle: "Transactions",
                  tileSubTitle: "Transaction History",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
