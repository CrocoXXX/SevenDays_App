import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays_app/pages/versi1/random_screen_page.dart';

class PricingScreenV1 extends StatefulWidget {
  const PricingScreenV1({Key? key}) : super(key: key);

  @override
  State<PricingScreenV1> createState() => _PricingScreenV1State();
}

class _PricingScreenV1State extends State<PricingScreenV1> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Center(
                child: Image.asset(
                  'assets/crown.png',
                  width: 100,
                ),
              ),
            ),
            const SizedBox(height: 48),
            Text(
              'Which one you wish \nto Upgrade?',
              style: GoogleFonts.poppins(
                color: const Color(0xff191919),
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
          ],
        ),
      );
    }

    Widget option(
      int index,
      String imageUrl,
      String title,
      String subtitle,
      String text,
      // bool isCheck,
    ) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          width: 315,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(39),
            border: Border.all(
              color: selectedIndex == index
                  ? const Color(0xff6050E7)
                  : const Color(0xffD9DEEA),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.only(
              top: 16,
              left: 17,
              bottom: 23,
              right: 26,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  imageUrl,
                  width: 66,
                  height: 61,
                ),
                const SizedBox(width: 7),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        color: const Color(0xff191919),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          subtitle,
                          style: GoogleFonts.poppins(
                            color: const Color(0xffA3A8B8),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          text,
                          style: GoogleFonts.poppins(
                            color: const Color(0xff5343C2),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                selectedIndex == index
                    ? Image.asset(
                        'assets/btn_check.png',
                        width: 26,
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
          option(0, 'assets/upgrade1.png', 'Money Security', 'support', '24/7'),
          const SizedBox(height: 24),
          option(
              1, 'assets/upgrade2.png', 'Automation', 'we provide', 'Invoice'),
          const SizedBox(height: 24),
          option(
              2, 'assets/upgrade3.png', 'Balance Report', 'can up to', '10k'),
          const SizedBox(height: 80),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff6050E7),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                'Upgrade Now',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RandomScreenV1(),
                  ),
                );
              },
              child: Image.asset(
                'assets/right_arrow.png',
                width: 24,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
