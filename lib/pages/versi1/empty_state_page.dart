import 'package:flutter/material.dart';

class EmptyStateV1 extends StatelessWidget {
  const EmptyStateV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('Pages Empty State Versi 1'),
      ),
    );
  }
}