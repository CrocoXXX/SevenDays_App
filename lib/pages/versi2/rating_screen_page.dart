import 'package:flutter/material.dart';
import 'package:sevendays_app/pages/versi2/pricing_screen_page.dart';
import 'package:sevendays_app/theme.dart';

class RatingScreenV2 extends StatelessWidget {
  const RatingScreenV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181925),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 100),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/illustration3.png',
                  width: 200,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Pizza Ballado',
                style: pizzaStyle,
              ),
              const SizedBox(height: 4),
              Text(
                '\$90,00',
                style: priceStyle,
              ),
              const SizedBox(height: 124),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Was it delicious?',
                    style: questionStyle,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/emoji1.png',
                        width: 60,
                      ),
                      Image.asset(
                        'assets/emoji2.png',
                        width: 60,
                      ),
                      Image.asset(
                        'assets/emoji3.png',
                        width: 60,
                      ),
                      Image.asset(
                        'assets/emoji4.png',
                        width: 60,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 90),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PricingScreenV2(),
                    ),
                  );
                },
                child: Container(
                  width: 211,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xff34D186),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Align(
                    child: Text(
                      'Rate Now',
                      style: button1Style,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
