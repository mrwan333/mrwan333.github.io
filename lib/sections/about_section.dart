import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Mrwan Abdelnasser Ali",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "Flutter Developer | Building mobile apps that are easy to use, fast, and look nice. "
            "I love writing clean code and creating smooth user experiences. "
            "Passionate about Flutter, Dart, and state management to deliver great apps.",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 13, height: 1.5),
          ),

          const SizedBox(height: 30),

          // const Text(
          //   "▪️ Available for new projects and collaborations!",
          //   textAlign: TextAlign.left,
          //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(
                  FontAwesomeIcons.envelope,
                  color: Colors.redAccent,
                ),
                onPressed: () {
                  launchUrl(
                    Uri.parse('mailto:mrwanabdelnasserali12@gmail.com'),
                  );
                },
              ),
              const SizedBox(width: 10),

              IconButton(
                icon: Icon(FontAwesomeIcons.linkedin, color: Colors.blueAccent),
                onPressed: () {
                  launchUrl(
                    Uri.parse(
                      'https://www.linkedin.com/in/mrwan-abdelnasser-60223b249?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BQJLNkFgXRQO4KauvUgcJJQ%3D%3D',
                    ),
                  );
                },
              ),
              const SizedBox(width: 10),

              IconButton(
                icon: Icon(FontAwesomeIcons.github, color: Colors.black),
                onPressed: () {
                  launchUrl(Uri.parse('https://github.com/mrwan333'));
                },
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              const Text(
                "📞",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                "+201125297645",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            margin: const EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              color: Colors.grey[200], // لون الخلفية
              borderRadius: BorderRadius.circular(10), // حواف مدورة
            ),
            child: const Text(
              "Junior Flutter Developer with a passion for building clean, fast, and user-friendly mobile apps.Enjoy working with Flutter, Dart.\n"
              "And state management to create functional and scalable applications.\n"
              "Eager to learn, improve skills, and contribute to real-world projects. "
              "Focus on writing maintainable code and crafting smooth user experiences.\n\n",
              // "Check out projects in the Portfolio section or visit GitHub to see the work.",
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
