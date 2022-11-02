import 'package:flutter/material.dart';
import 'package:sevendays_app/pages/versi1/rating_screen_page.dart';
import 'package:sevendays_app/theme.dart';

class EmptyStateV1 extends StatelessWidget {
  const EmptyStateV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 68, vertical: 148),
        child: Column(
          children: [
            Image.asset(
              'assets/illustration.png',
              width: 240,
              height: 210,
            ),
            const SizedBox(height: 100),
            Text(
              'Success Order',
              style: titleLightStyle,
            ),
            const SizedBox(height: 16),
            Text(
              'We will delivery your package \nas soon as possible',
              style: subtitleLightStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RatingScreenV1(),
                  ),
                );
              },
              child: Container(
                width: 200,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xffF94593),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Align(
                  child: Text(
                    'Done',
                    style: buttonStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
