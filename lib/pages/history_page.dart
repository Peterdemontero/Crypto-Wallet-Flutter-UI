import 'package:flutter/material.dart';

import '../Widgets/action_buttons.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Drawer Icon
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Image.asset(
                'lib/images/Button.png',
                height: 60.0,
              ),
            ),

            // Notification Bell Icon
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Image.asset(
                'lib/images/notifications.png',
                height: 60.0,
              ),
            ),
          ],
        ),

        SizedBox(
          height: 50.0,
        ),

        // Text 1
        Text(
          'Available balance',
          style: TextStyle(
              color: Color(0xffffffff),
              fontFamily: 'Livvic',
              fontSize: 20.0,
              fontWeight: FontWeight.w400),
        ),

        SizedBox(
          height: 10.0,
        ),

        // Tezt 2
        Text(
          '\$6,500',
          style: TextStyle(
              color: Color(0xffFFCDEA),
              fontFamily: 'Livvic',
              fontSize: 50.0,
              fontWeight: FontWeight.w600),
        ),

        SizedBox(
          height: 20.0,
        ),

        //Wallet selection
        Container(
          // height: 32,
          width: 200,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(30),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Color(0xff8020EF),
                width: 1.5,
              )),
          child: Row(
            children: [
              // Pink Dot
              Image.asset(
                'lib/images/Vector.png',
              ),
              SizedBox(
                width: 10.0,
              ),
              // Metamask Text
              Text(
                'metamask',
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontFamily: 'Livvic',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),

              //More Arrow
              Icon(
                Icons.expand_more,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        SizedBox(
          height: 50.0,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Send Icon and Text
            ActionButtons(
              actionText: 'Send',
              imagePath: 'lib/images/send.png',
            ),

            //SizedBox
            SizedBox(
              width: 20.0,
            ),

            // Recieve Icon and Text
            ActionButtons(
              actionText: 'Receive',
              imagePath: 'lib/images/call-received.png',
            ),

            //SizedBox
            SizedBox(
              width: 20.0,
            ),

            // Buy Icon and Text
            ActionButtons(
              actionText: 'Buy',
              imagePath: 'lib/images/attach-money.png',
            ),
          ],
        ),
      ],
    );
  }
}
