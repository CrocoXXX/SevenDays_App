import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays_app/pages/versi2/random_screen_page.dart';

class PricingScreenV2 extends StatelessWidget {
  const PricingScreenV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg_color.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Image.asset(
                          'assets/illustration5.png',
                          width: 164,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Pro Features',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Unlock the winner modules \nand get more insights',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff7F7FAD),
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 58),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/btn_check1.png',
                                width: 26,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                'Unlock Our Top Charts',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 26),
                          Row(
                            children: [
                              Image.asset(
                                'assets/btn_check1.png',
                                width: 26,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                'Save More than 1,000 Docs',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 26),
                          Row(
                            children: [
                              Image.asset(
                                'assets/btn_check1.png',
                                width: 26,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                '24/7 Customer Support',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 26),
                          Row(
                            children: [
                              Image.asset(
                                'assets/btn_check1.png',
                                width: 26,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                "Track Company's Spending",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 319,
                      height: 55,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RandomScreenV2(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xffE57C73),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(31),
                          ),
                          shadowColor: const Color(0xffE57C73),
                          elevation: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 100,
                              ),
                              child: Text(
                                'Subscribe Now',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/btn_arrow.png',
                              width: 41,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Contact Support',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
