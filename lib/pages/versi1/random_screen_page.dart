import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays_app/widgets/cart_list.dart';

class RandomScreenV1 extends StatelessWidget {
  const RandomScreenV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text(
                  'My Shopping Cart',
                  style: GoogleFonts.poppins(
                    color: const Color(0xff191919),
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const CardList(
              imageUrl: 'assets/burger.png',
              amount: '2',
              food: 'Burger Malleta',
              place: 'McTheone',
              price: '\$90.00',
            ),
            const CardList(
              imageUrl: 'assets/mojito.png',
              amount: '5',
              food: 'Mojito Orange',
              place: 'The Bar',
              price: '\$510.00',
            ),
            Container(
              width: 315,
              height: 161,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      left: 16,
                      bottom: 10,
                    ),
                    child: Text(
                      'Informations',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff191919),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sub total',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '\$600.00',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Delivery',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xff191919),
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '\$80.00',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xff191919),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '\$680.00',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            Container(
              width: 327,
              height: 60,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shadowColor: const Color(0xffFFC532),
                  elevation: 5,
                  backgroundColor: const Color(0xffFFC532),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(53),
                  ),
                ),
                child: Text(
                  'Checkout Now',
                  style: GoogleFonts.poppins(
                    color: const Color(0xff2E221B),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: 327,
              height: 60,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xffD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(53),
                  ),
                ),
                child: Text(
                  'Save to Wishlist',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
