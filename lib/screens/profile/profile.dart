import 'package:flutter/material.dart';
import 'package:utility_shop/screens/profile/profile_body.dart';


class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: profileBody(),
      ),
    );
  }
}
