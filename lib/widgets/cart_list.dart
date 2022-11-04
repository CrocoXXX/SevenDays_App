import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardList extends StatelessWidget {
  // const CardList({Key? key}) : super(key: key);

  final String imageUrl;
  final String amount;
  final String food;
  final String place;
  final String price;

  const CardList({
    required this.imageUrl,
    required this.amount,
    required this.food,
    required this.place,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 26),
      child: Container(
        width: 315,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, bottom: 13),
              child: Row(
                children: [
                  Image.asset(
                    imageUrl,
                    width: 80,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food,
                        style: GoogleFonts.poppins(
                          color: const Color(0xff191919),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        place,
                        style: GoogleFonts.poppins(
                          color: const Color(0xffA3A8B8),
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_minus.png',
                    width: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      amount,
                      style: GoogleFonts.poppins(
                        color: const Color(0xff191919),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/icon_plus.png',
                    width: 22,
                  ),
                  const Spacer(),
                  Text(
                    price,
                    style: GoogleFonts.poppins(
                      color: const Color(0xff191919),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
