import 'package:boo/widgets/hobby_status.dart';
import 'package:flutter/material.dart';

class HobbyUser extends StatelessWidget {
  const HobbyUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(
        vertical: 10,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 12,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hobi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              HobbyStatus(title: '#film', color: Colors.lightBlueAccent),
              HobbyStatus(title: '#pisces', color: Colors.white),
              HobbyStatus(title: '#hakasasimanusia', color: Colors.white),
              HobbyStatus(title: '#kucing', color: Colors.white),
              HobbyStatus(title: '#memasak', color: Colors.white),
              HobbyStatus(title: '#jalanjalan', color: Colors.white),
              HobbyStatus(title: '#mendaki', color: Colors.white),
              HobbyStatus(title: '#outdoors', color: Colors.white),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Bahasa',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'BAHASA INGGRIS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: Colors.lightBlueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
