import 'package:flutter/material.dart';
import '../widgets/glowing_moon_header.dart';
import '../widgets/animated_sleep_ring.dart';
import '../widgets/sleep_stat_card.dart';
import '../widgets/mood_chip_carousel.dart';
import '../widgets/toggle_night_switch.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: ToggleNightSwitch(),
              ),
            ),
            const GlowingMoonHeader(),
            const SizedBox(height: 12),
            const Center(child: AnimatedSleepRing(progress: 0.76)),
            const SizedBox(height: 28),
            SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  SleepStatCard(label: "Quality", value: "Good", icon: Icons.bedtime),
                  SleepStatCard(label: "Bed Time", value: "11:15 PM", icon: Icons.nightlight),
                  SleepStatCard(label: "Wake Time", value: "6:45 AM", icon: Icons.wb_twilight),
                ],
              ),
            ),
            const SizedBox(height: 20),
            MoodChipCarousel(),
            const SizedBox(height: 30),
            Center(
              child: Text(
                "Sweet Dreams 🌙",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
