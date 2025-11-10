import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
      color: Colors.grey[100],
      child: Column(
        children: [
          const Text(
            "My Projects 🚀",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 30),
          const _TriptoProjectCard(),
        ],
      ),
    );
  }
}

class _TriptoProjectCard extends StatelessWidget {
  const _TriptoProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tech = [
      "Flutter",
      "Dart",
      "BLoC",
      "MVP",
      "Figma",
      "REST APIs",
    ];

    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          const Icon(
            FontAwesomeIcons.suitcaseRolling,
            color: Colors.blueAccent,
            size: 45,
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Tripto (Web + Mobile)",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 31, 84),
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                "from July 2025 - present",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            "Tripto is a complete travel application consisting of two parts:",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, height: 1.5),
          ),
          const SizedBox(height: 8),
          const Text(
            "• Client App – for booking trips, hotels, and flights, available on both Web and Mobile.\n"
            "• Admin Dashboard – for managing destinations, users, and bookings, built with Flutter Web & Mobile.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, height: 1.6, color: Colors.black87),
          ),

          // const SizedBox(height: 15),
          const SizedBox(height: 18),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: tech.map((t) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  t,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
