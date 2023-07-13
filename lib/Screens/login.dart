import 'package:crypto_wallet/Widgets/buttonwidget.dart';
import 'package:flutter/material.dart';

import '../Widgets/textfield_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isHidden = true;

  void togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff221F3A),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50.0),

          //Screen Header
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                //Arrow icon
                Image.asset('lib/images/arrow.png'),

                const SizedBox(width: 120.0),

                //Text
                Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Livvic',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50.0),

          TextFieldWidget(
            hintext: 'Email',
            obscureText: false,
            controller: emailController,
          ),

          TextFieldWidget(
            hintext: 'Password',
            obscureText: _isHidden,
            controller: passwordController,
            suffixIcon: InkWell(
              onTap: togglePasswordView,
              child: Icon(
                _isHidden ? Icons.visibility_off : Icons.visibility,
                color: Color(0xff867890),
              ),
            ),
          ),

          //forgot password?
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontFamily: 'Livvic',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 40.0),

          //Login Button
          ButtonWidget(
            buttonText: 'Login',
          ),

          const SizedBox(height: 30.0),

          // l don't have an account button
          Text(
            'I don\'t have an account',
            style: TextStyle(
              color: Color(0xffCACACA),
              fontFamily: 'Livvic',
              fontSize: 17.0,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.underline,
            ),
          ),

          const SizedBox(height: 60.0),

          // Divider line
          Divider(
            thickness: 0.6,
            color: Color(0xffDFA1ED),
            indent: 55.0,
            endIndent: 55.0,
          ),
          const SizedBox(height: 50.0),

          // or continue with "Text"
          Text(
            'or login with ',
            style: TextStyle(
              color: Color(0xffCACACA),
              fontFamily: 'Livvic',
              fontSize: 17.0,
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(
            height: 20.0,
          ),

          // Signin logo's
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //First image
              Image.asset(
                'lib/images/google.png',
                height: 60.0,
              ),

              // Second image
              Image.asset(
                'lib/images/fb.png',
                height: 60.0,
              ),

              // Third image
              Image.asset(
                'lib/images/apple.png',
                height: 60.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
