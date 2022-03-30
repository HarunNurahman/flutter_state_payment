import 'package:flutter/material.dart';
import 'package:flutter_state_payment/components/themes.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/img_achieve_goal.png',
                  width: 267,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Upgrade to',
                        style: titleTextStyle,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Pro',
                        style: titleTextStyle.copyWith(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'Go Unlock all features and \nbuild your own business bigger',
                    style: subtitleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
