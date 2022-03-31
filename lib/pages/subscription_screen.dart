import 'package:flutter/material.dart';
import 'package:flutter_state_payment/components/themes.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              header(),
              options(0, 'Monthly', 'Good for Starting Up', '\$20'),
              options(1, 'Quarterly', 'Focusing on Building', '\$55'),
              options(2, 'Annually', 'Steady Company', '\$200'),
              selectedIndex == -1 ? SizedBox() : checkoutButton(),
            ],
          ),
        ),
      ),
    );
  }

  Column checkoutButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
          width: double.infinity,
          height: 55,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color(0xFF007DFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(70),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Checkout Now',
              style: buttonTextStyle,
            ),
          ),
        )
      ],
    );
  }

  Container options(int index, String plan, String desc, String price) {
    return Container(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedIndex == index
                  ? const Color(0xFF007DFF)
                  : const Color(0xFF4D5B7C),
            ),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  selectedIndex == index
                      ? const Icon(
                          Icons.radio_button_checked,
                          color: Color(0xFF007DFF),
                          size: 18,
                        )
                      : const Icon(
                          Icons.radio_button_unchecked,
                          color: Color(0xFF4D5B7C),
                          size: 18,
                        ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        plan,
                        style: planTextStyle,
                      ),
                      Text(
                        desc,
                        style: descTextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(width: 90),
                  Text(
                    price,
                    style: priceTextStyle,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding header() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Column(
        children: [
          Image.asset(
            'assets/images/img_achieve_goal.png',
            width: double.infinity,
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
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
    );
  }
}
