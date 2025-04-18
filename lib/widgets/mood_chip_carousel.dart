import 'package:flutter/material.dart';

class MoodChipCarousel extends StatelessWidget {
  final List<String> moods = ["😴", "😊", "😐", "🥱", "😣", "😡"];

  MoodChipCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: moods.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 6),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface.withOpacity(0.15),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              moods[index],
              style: const TextStyle(fontSize: 24),
            ),
          );
        },
      ),
    );
  }
}
