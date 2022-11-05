import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RandomScreenV2 extends StatelessWidget {
  const RandomScreenV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/illustration6.png',
              width: 436,
            ),
            const SizedBox(height: 20),
            Text(
              'Arrina La',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              'Bali, Dekat Bandung',
              style: GoogleFonts.poppins(
                color: const Color(0xff2F323A),
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Pantai Pandawa adalah salah satu para \nkawasan wisata di area Kuta selatan sana  \nKabupaten Dekat Bandung, Bali.',
                    style: GoogleFonts.poppins(
                      color: Color(0xff2F323A),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 26),
                  Text(
                    'Booking Now',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/day1.png',
                        width: 80,
                        height: 100,
                      ),
                      Image.asset(
                        'assets/day2.png',
                        width: 80,
                        height: 100,
                      ),
                      Image.asset(
                        'assets/day3.png',
                        width: 80,
                        height: 100,
                      ),
                      Image.asset(
                        'assets/day4.png',
                        width: 80,
                        height: 100,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$22,800',
                    style: GoogleFonts.poppins(
                      color: const Color(0xff3F6DF6),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '/night',
                    style: GoogleFonts.poppins(
                      color: const Color(0xff2F323A),
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 220,
                height: 60,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff3F6DF6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                  child: Text(
                    'Continue',
                    style: GoogleFonts.poppins(
                      color: const Color(0xffFAFAFA),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              label: '',
            )
          ],
        ),
      ),
    );
  }
}
