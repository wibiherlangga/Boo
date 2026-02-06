import 'package:boo/example_candidate_model.dart';
import 'package:boo/widgets/bio_status.dart';
import 'package:flutter/material.dart';

class BioUser extends StatelessWidget {
  final ExampleCandidateModel candidate;
  const BioUser({
    super.key,
    required this.candidate,
  });

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('MENCARI'),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      blurRadius: 12,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Text('Masih Ragu'),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Not looking for perfect, just real. Someone to share late night talks, spontaneous plans, and the occasional silent moment that still feels like everything.',
          ),
          const SizedBox(
            height: 20,
          ),
          const Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              BioStatus(icon: Icons.favorite, title: 'Lajang'),
              BioStatus(
                  icon: Icons.rounded_corner,
                  title: 'Setia pada Satu Pasangan'),
              BioStatus(icon: Icons.sports, title: 'Aktif'),
              BioStatus(icon: Icons.school, title: 'Gelar sarjana'),
              BioStatus(icon: Icons.smoke_free, title: 'Tidak Pernah'),
              BioStatus(icon: Icons.handshake, title: 'Moslem'),
              BioStatus(icon: Icons.flag, title: 'USA'),
            ],
          ),
        ],
      ),
    );
  }
}
