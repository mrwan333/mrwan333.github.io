import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({super.key});

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final skills = [
      {
        "icon": FontAwesomeIcons.mobileScreenButton,
        "name": "Flutter",
        "color": Colors.blue,
      },
      {"icon": FontAwesomeIcons.code, "name": "Dart", "color": Colors.cyan},
      {
        "icon": FontAwesomeIcons.database,
        "name": "Firebase",
        "color": Colors.orange,
      },
      {
        "icon": FontAwesomeIcons.server,
        "name": "REST APIs",
        "color": Colors.green,
      },
      {
        "icon": FontAwesomeIcons.cubes,
        "name": "BLoC / Provider",
        "color": Colors.purple,
      },
      {
        "icon": FontAwesomeIcons.github,
        "name": "Git & GitHub",
        "color": Colors.black,
      },
      {
        "icon": FontAwesomeIcons.screwdriverWrench,
        "name": "Postman",
        "color": Colors.deepOrange,
      },
      {
        "icon": FontAwesomeIcons.penRuler,
        "name": "UI/UX",
        "color": Colors.pink,
      },
    ];

    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: const EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        color: Colors.grey[200], // لون الخلفية
        borderRadius: BorderRadius.circular(10), // حواف مدورة
      ),
      child: Column(
        children: [
          const Text(
            "Skills & Tools 💡 ",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),

          const Text(
            "The skills & tools and technologies I am really good at 👇",
            style: TextStyle(
              fontSize: 16,
              // fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 80,
                runSpacing: 30,
                alignment: WrapAlignment.center,
                children: skills.map((skill) {
                  return _SkillCard(
                    icon: skill["icon"] as IconData,
                    name: skill["name"] as String,
                    color: skill["color"] as Color,
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SkillCard extends StatelessWidget {
  final IconData icon;
  final String name;
  final Color color;

  const _SkillCard({
    required this.icon,
    required this.name,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return
    //  Container(
    //   width: 80,
    //   height: 80,
    //   // decoration: BoxDecoration(
    //   //   color: const Color.fromARGB(255, 25, 103, 237).withOpacity(0.1),
    //   //   borderRadius: BorderRadius.circular(10),
    //   //   border: Border.all(
    //   //     color: const Color.fromARGB(255, 17, 81, 192).withOpacity(0.2),
    //   //   ),
    //   // ),
    //   child:
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MouseRegion(child: Icon(icon, color: color)),
        const SizedBox(height: 15),
        Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
