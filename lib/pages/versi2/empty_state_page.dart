import 'package:flutter/material.dart';

class EmptyStateV2 extends StatelessWidget {
  const EmptyStateV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('Pages Empty State Versi 2'),
      ),
    );
  }
}
