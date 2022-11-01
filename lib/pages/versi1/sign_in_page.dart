import 'package:flutter/material.dart';

class SignInV1 extends StatelessWidget {
  const SignInV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Text('Pages Sign In Versi 1'),
        ),
      ),
    );
  }
}
