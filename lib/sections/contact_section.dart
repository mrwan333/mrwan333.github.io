import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  // Future<void> _launchUrl(String url) async {
  //   final Uri uri = Uri.parse(url);
  //   if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
  //     throw Exception('Could not launch $url');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
      color: Colors.white,
      child: Column(
        children: [
          const Text(
            "📬 Contact Me",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            "Let's connect! Feel free to reach out through any platform below 👇",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
          const SizedBox(height: 40),
          Wrap(
            spacing: 30,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              _ContactItem(
                icon: FontAwesomeIcons.envelope,
                label: "Email",
                value: "MrwanAbdelnasserAli12@gmail.com",
                color: Colors.redAccent,
                onTap: () {
                  launchUrl(
                    Uri.parse('Mailto:mrwanabdelnasserali12@gmail.com'),
                  );
                },
              ),
              _ContactItem(
                icon: FontAwesomeIcons.linkedin,
                label: "LinkedIn",
                value: "Mrwan Abdelnasser",
                color: Colors.blueAccent,
                onTap: () {
                  launchUrl(
                    Uri.parse(
                      'https://www.linkedin.com/in/mrwan-abdelnasser-60223b249?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BQJLNkFgXRQO4KauvUgcJJQ%3D%3D',
                    ),
                  );
                },
              ),
              _ContactItem(
                icon: FontAwesomeIcons.github,
                label: "GitHub",
                value: "marwanali",
                color: Colors.black,
                onTap: () {
                  launchUrl(Uri.parse('https://github.com/mrwan333'));
                },
              ),
            ],
          ),
          const SizedBox(height: 50),
          const Divider(thickness: 1),
          const SizedBox(height: 10),
          const Text(
            "© 2025 Marwan Abdelnasser",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;
  final VoidCallback onTap;

  const _ContactItem({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 260,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color.withOpacity(0.08),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color.withOpacity(0.3)),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 32),
            const SizedBox(height: 12),
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              value,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
