import 'package:flutter/material.dart';
import 'package:sevendays_app/pages/versi1/pricing_screen_page.dart';
import 'package:sevendays_app/theme.dart';

class RatingScreenV1 extends StatelessWidget {
  const RatingScreenV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Center(
                  child: Image.asset(
                    'assets/illustration4.png',
                    width: 295,
                    height: 210,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'Enjoy Your Meal',
                style: mealStyle,
              ),
              const SizedBox(height: 6),
              Text(
                'Please rate our experience',
                style: rateStyle,
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Color(0xffFFC648),
                  ),
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Color(0xffFFC648),
                  ),
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Color(0xffFFC648),
                  ),
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Color(0xffF8F8F8),
                  ),
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Color(0xffF8F8F8),
                  ),
                ],
              ),
              const SizedBox(height: 36),
              Container(
                width: 319,
                height: 130,
                decoration: BoxDecoration(
                  color: const Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PricingScreenV1(),
                    ),
                  );
                },
                child: Container(
                  width: 319,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xff4074E6),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Align(
                    child: Text(
                      'Submit Review',
                      style: button1Style,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
