import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays_app/pages/versi1/empty_state_page.dart';

class SignInV1 extends StatelessWidget {
  const SignInV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 94),
                  child: Center(
                    child: Image.asset(
                      'assets/gallery2.png',
                      width: 245,
                      height: 279,
                    ),
                  ),
                ),
                const SizedBox(height: 53),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: GoogleFonts.openSans(
                        color: const Color(0xff17171A),
                      ),
                    ),
                    const SizedBox(height: 6),
                    TextFormField(
                      style: GoogleFonts.openSans(
                        color: const Color(0xff17171A),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                        fillColor: const Color(0xffF3F3F3),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(71),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Email',
                        // hintStyle: GoogleFonts.openSans(
                        //   color: const Color(0xff6F7075),
                        //   fontSize: 14,
                        // ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Password',
                      style: GoogleFonts.openSans(
                        color: const Color(0xff17171A),
                      ),
                    ),
                    const SizedBox(height: 6),
                    TextFormField(
                      obscureText: true,
                      style: GoogleFonts.openSans(
                        color: const Color(0xff17171A),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                        fillColor: const Color(0xffF3F3F3),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(71),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Password',
                        // hintStyle: GoogleFonts.openSans(
                        //   color: const Color(0xff6F7075),
                        //   fontSize: 14,
                        // ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Center(
                      child: Container(
                        width: 320,
                        height: 55,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EmptyStateV1(),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xff5468FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60),
                            ),
                          ),
                          child: Text(
                            'Log In',
                            style: GoogleFonts.openSans(
                              color: const Color(0xffF8F8F8),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: 320,
                      height: 55,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                        child: Text(
                          'Create New Account',
                          style: GoogleFonts.openSans(
                            color: const Color(0xffCFCFCF),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
