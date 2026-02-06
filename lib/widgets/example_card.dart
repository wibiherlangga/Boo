import 'package:boo/example_candidate_model.dart';
import 'package:boo/widgets/bio_user.dart';
import 'package:boo/widgets/hobby_user.dart';
import 'package:boo/widgets/profile_user.dart';
import 'package:flutter/material.dart';

class ExampleCard extends StatelessWidget {
  final ExampleCandidateModel candidate;

  const ExampleCard(
    this.candidate, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ProfileUser(
            candidate: candidate,
            profilePictUrl:
                'https://picsum.photos/seed/${candidate.imageSeed}/600/500',
          ),
          const SizedBox(
            height: 30,
          ),
          BioUser(
            candidate: candidate,
          ),
          const SizedBox(
            height: 30,
          ),
          const HobbyUser(),
          const SizedBox(
            height: 30,
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.red,
            ),
            child: Image.network(
              'https://picsum.photos/seed/${candidate.imageSeed}/600/500',
              height: 500,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
