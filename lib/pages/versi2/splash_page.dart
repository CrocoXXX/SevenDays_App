import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays_app/pages/versi2/get_started_page.dart';
import 'package:sevendays_app/theme.dart';

class SplashV2 extends StatefulWidget {
  const SplashV2({Key? key}) : super(key: key);

  @override
  State<SplashV2> createState() => _SplashV2State();
}

class _SplashV2State extends State<SplashV2> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const GetStartedV2(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff13131E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/swords.png',
              width: 140,
              height: 140,
            ),
            Text(
              'V E N T U R E',
              style: GoogleFonts.dmSerifDisplay(
                color: whiteColor,
                fontSize: 32,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
