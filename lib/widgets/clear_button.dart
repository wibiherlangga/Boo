import 'dart:ui';

import 'package:flutter/material.dart';

class ClearButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;
  final VoidCallback onTap;

  const ClearButton({
    super.key,
    required this.icon,
    required this.color,
    this.size = 60,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.10),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(icon),
            iconSize: size / 2,
            color: color,
            onPressed: onTap,
          ),
        ),
      ),
    );
  }
}
