import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final String actionText;
  final String imagePath;

  const ActionButtons({
    super.key,
    required this.actionText,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Send Icon
        Container(
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xffffffff),
                width: 1.5,
              )),
          child: Image.asset(
            imagePath,
          ),
        ),

        // Send Text
        Text(
          actionText,
          style: TextStyle(
              color: Color(0xffffffff),
              fontFamily: 'Livvic',
              fontSize: 20.0,
              fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
