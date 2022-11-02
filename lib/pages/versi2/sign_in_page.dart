import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays_app/pages/versi2/empty_state_page.dart';
import 'package:sevendays_app/theme.dart';

class SignInV2 extends StatelessWidget {
  const SignInV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff181A20),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icon1.png',
                  width: 50,
                ),
                const SizedBox(height: 70),
                Text(
                  'Welcome back. \nLet’s make money.',
                  style: GoogleFonts.poppins(
                    color: whiteColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 70),
                TextFormField(
                  style: GoogleFonts.openSans(
                    color: whiteColor,
                  ),
                  decoration: InputDecoration(
                    fillColor: const Color(0xff262A34),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Email',
                    hintStyle: GoogleFonts.openSans(
                      color: const Color(0xff6F7075),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  style: GoogleFonts.openSans(color: whiteColor),
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: const Color(0xff262A34),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.openSans(
                      color: const Color(0xff6F7075),
                    ),
                    suffixIcon: const Icon(
                      Icons.visibility,
                      color: Color(0xff6F7075),
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Forgot My Password',
                    style: GoogleFonts.poppins(
                      color: const Color(0xff6A6B70),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 117),
                Center(
                  child: Container(
                    width: 295,
                    height: 55,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EmptyStateV2(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xffFCAC15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.openSans(
                          color: const Color(0xff6B4909),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: GoogleFonts.poppins(
                        color: whiteColor,
                      ),
                    ),
                    Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                      ),
                    ),
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
