import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays_app/pages/versi1/sign_in_page.dart';
import 'package:sevendays_app/theme.dart';

class GetStartedV1 extends StatelessWidget {
  const GetStartedV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Health First.',
                          style: GoogleFonts.poppins(
                            color: blackColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Exercise together with our best \ncommunity fit in the world',
                          style: GoogleFonts.poppins(
                            color: greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, bottom: 70),
                    child: Center(
                      child: Image.asset(
                        'assets/gallery.png',
                        width: 295,
                        height: 402,
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          width: 295,
                          height: 55,
                          color: const Color(
                              0xffAFEA0D), // Dipakai apabila tidak ada border radius
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignInV1(),
                                ),
                              );
                            },
                            // style: TextButton.styleFrom(
                            //   backgroundColor: const Color(0xffAFEA0D),
                            // ),
                            child: Text(
                              'Shape My Body',
                              style: GoogleFonts.lato(
                                color: blackColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Terms & Conditions',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff757575),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
