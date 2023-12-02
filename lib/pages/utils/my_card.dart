import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNomber;
  final int expiryMonth;
  final int expiryYear;
  final dynamic color;

  const MyCard({
    super.key,
    required this.balance,
    required this.cardNomber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Container(
        width: 320,
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Blance',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'icons/image9.png',
                      height: 50,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '\$' + balance.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNomber.toString(),
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  expiryMonth.toString() + '/' + expiryYear.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
