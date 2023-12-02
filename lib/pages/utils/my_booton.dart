import 'package:flutter/material.dart';

class MyBooton extends StatelessWidget {
  final String iconImagePath;
  final String bootonText;

  const MyBooton({
    super.key,
    required this.bootonText,
    required this.iconImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.green[50],
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(color: Colors.grey.shade600, blurRadius: 10),
            ],
          ),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          bootonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
