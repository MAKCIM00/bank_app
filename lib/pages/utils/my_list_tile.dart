import 'package:flutter/material.dart';

class MyListtile extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubTitle;

  const MyListtile({
    super.key,
    required this.iconImagePath,
    required this.tileTitle,
    required this.tileSubTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            child: Center(
              child: Image.asset(iconImagePath),
            ),
          ),
          Column(
            children: [
              Text(
                tileTitle,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber[100],
                ),
              ),
              Text(
                tileSubTitle,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[300]),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.green[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.double_arrow_rounded),
          ),
        ],
      ),
    );
  }
}
