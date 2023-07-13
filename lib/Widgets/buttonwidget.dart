import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  const ButtonWidget({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35, vertical: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-1.00, 0.06),
          end: Alignment(1, -0.06),
          colors: [Color(0xFF0014FF), Color(0xFF8020EF), Color(0xFFFF2CDF)],
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: Color(0xffffffff),
          fontFamily: 'Livvic',
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
