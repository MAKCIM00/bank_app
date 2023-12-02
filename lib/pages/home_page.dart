// ignore_for_file: prefer_const_constructors

import 'package:bank_app11/pages/utils/my_booton.dart';
import 'package:bank_app11/pages/utils/my_card.dart';
import 'package:bank_app11/pages/utils/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink[300],
        child: Icon(Icons.monetization_on_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home_filled,
                  size: 32,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings_outlined,
                  size: 32,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 25,
              ),
              child: Row(
                children: [
                  const Text(
                    'Card',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'My',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[200],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 2340.32,
                    cardNomber: 123456789,
                    expiryMonth: 9,
                    expiryYear: 12,
                    color: Colors.green[400],
                  ),
                  MyCard(
                    balance: 6360.31,
                    cardNomber: 123456789,
                    expiryMonth: 09,
                    expiryYear: 11,
                    color: Colors.amber[400],
                  ),
                  MyCard(
                    balance: 5360.33,
                    cardNomber: 987654321,
                    expiryMonth: 8,
                    expiryYear: 12,
                    color: Colors.pink[400],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: SwapEffect(
                activeDotColor: Colors.black87,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MyBooton(
                  bootonText: 'Send',
                  iconImagePath: 'icons/image3.png',
                ),
                MyBooton(
                  bootonText: 'Pay',
                  iconImagePath: 'icons/image2.png',
                ),
                MyBooton(
                  bootonText: 'Bills',
                  iconImagePath: 'icons/image5.png',
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            MyListtile(
              iconImagePath: 'icons/image4.png',
              tileTitle: 'Statostic Makcim Nabiev',
              tileSubTitle: 'Payments and Icome',
            ),
            MyListtile(
              iconImagePath: 'icons/image1.png',
              tileTitle: 'Money Tranactions Makcim',
              tileSubTitle: 'History and Money Nabiev',
            ),
          ],
        ),
      ),
    );
  }
}
