import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintext;
  final controller;
  final bool obscureText;
  final Widget?
      suffixIcon; // if you want to create a variable that is a widget use the tag "Widget?"

  const TextFieldWidget({
    super.key,
    required this.hintext,
    required this.controller,
    required this.obscureText,
    this.suffixIcon,
  });

  //TextEditingController = controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        style: TextStyle(
          color: Color(0xff867890),
        ),
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff867890),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(70.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff867890),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(70.0),
            ),
          ),
          hintText: hintext,
          contentPadding: EdgeInsets.only(left: 20.0, right: 30),
          hintStyle: TextStyle(
            color: Color(0xff867890),
            fontFamily: 'Livvic',
            fontSize: 18.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
