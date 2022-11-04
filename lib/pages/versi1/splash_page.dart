import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays_app/pages/versi1/get_started_page.dart';
import 'package:sevendays_app/theme.dart';

class SplashV1 extends StatefulWidget {
  const SplashV1({Key? key}) : super(key: key);

  @override
  State<SplashV1> createState() => _SplashV1State();
}

class _SplashV1State extends State<SplashV1> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const GetStartedV1(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/home.png',
                  width: 51,
                ),
                const SizedBox(width: 14),
                Text(
                  'HouseQu',
                  style: GoogleFonts.montserrat(
                    color: blackColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
