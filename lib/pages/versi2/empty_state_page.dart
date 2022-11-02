import 'package:flutter/material.dart';
import 'package:sevendays_app/pages/versi2/rating_screen_page.dart';
import 'package:sevendays_app/theme.dart';

class EmptyStateV2 extends StatelessWidget {
  const EmptyStateV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B33),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/illustration2.png',
              width: MediaQuery.of(context).size.width,
              height: 454,
            ),
            const SizedBox(height: 68),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 68),
              child: Column(
                children: [
                  Text(
                    'Boost Profit!',
                    style: titleDarkStyle,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Our tools are helping business \nto grow much faster',
                    style: subtitleDarkStyle,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 59),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RatingScreenV2(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/btn_rocket.png',
                      width: 65,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
