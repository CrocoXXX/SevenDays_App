import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingScreenV2 extends StatelessWidget {
  const PricingScreenV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
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
          ],
        ),
      );
    }

    Widget option() {
      return Row(
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
      );
    }

    return Scaffold(
        backgroundColor: const Color(0xffFBD7FF),
        body: Column(
          children: [
            header(),
            const SizedBox(height: 50),
            option(),
          ],
        ));
  }
}
