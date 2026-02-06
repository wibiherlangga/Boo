import 'dart:math';

import 'package:flutter/material.dart';

class ExampleCandidateModel {
  final String name;
  final String education;
  final String city;
  final List<Color> color;
  final int imageSeed;

  ExampleCandidateModel({
    required this.name,
    required this.education,
    required this.city,
    required this.color,
    required this.imageSeed,
  });
}

final random = Random();

final List<ExampleCandidateModel> candidates = [
  ExampleCandidateModel(
    name: 'Vio',
    education: 'Diponegoro University',
    city: 'Batam, Riau',
    color: const [
      Color(0xFFFF3868),
      Color(0xFFFFB49A),
    ],
    imageSeed: random.nextInt(99999),
  ),
  ExampleCandidateModel(
    name: 'Arda',
    education: 'Majapahit University',
    city: 'Pekanbaru, Riau',
    color: const [
      Color(0xFF736EFE),
      Color(0xFF62E4EC),
    ],
    imageSeed: random.nextInt(99999),
  ),
  ExampleCandidateModel(
    name: 'Vivi',
    education: 'Batam State Polytechnic',
    city: 'London',
    color: const [
      Color(0xFF2F80ED),
      Color(0xFF56CCF2),
    ],
    imageSeed: random.nextInt(99999),
  ),
  ExampleCandidateModel(
    name: 'Susi',
    education: 'Gajah Mada University',
    city: 'Jogjakarta',
    color: const [
      Color(0xFF0BA4E0),
      Color(0xFFA9E4BD),
    ],
    imageSeed: random.nextInt(99999),
  ),
  ExampleCandidateModel(
    name: 'Luffy',
    education: 'Bandung Technology Institute',
    city: 'Bandung',
    color: const [
      Color(0xFF0BA4E0),
      Color(0xFFA9E4BD),
    ],
    imageSeed: random.nextInt(99999),
  ),
];
