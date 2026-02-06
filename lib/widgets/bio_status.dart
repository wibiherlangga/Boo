import 'package:flutter/material.dart';

class BioStatus extends StatelessWidget {
  final IconData icon;
  final String title;
  const BioStatus({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.lightBlueAccent,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(title),
        ],
      ),
    );
  }
}
