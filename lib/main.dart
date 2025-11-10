import 'package:flutter/material.dart';
import 'sections/about_section.dart';
import 'sections/skills_section.dart';
import 'sections/projects_section.dart';
import 'sections/contact_section.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marwan Ali | Flutter Developer',
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        // appBar: AppBar(
        //   title: const Text('Marwan Ali'),
        //   backgroundColor: Colors.blueAccent,
        //   centerTitle: true,
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              AboutSection(),
              SkillsSection(),
              ProjectsSection(),
              // ContactSection(),
            ],
          ),
        ),
      ),
    );
  }
}
