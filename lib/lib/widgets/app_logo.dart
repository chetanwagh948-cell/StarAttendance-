import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double size;

  const AppLogo({super.key, this.size = 150});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo/security_star_logo.png',
      width: size,
      height: size,
      fit: BoxFit.contain,
    );
  }
}
