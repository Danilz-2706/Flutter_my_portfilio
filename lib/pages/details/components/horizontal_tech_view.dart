import 'package:flutter/material.dart';
import 'package:my_portfilio/ScrollOnWeb.dart';
import 'package:my_portfilio/intro_card.dart';
import 'package:my_portfilio/models/project.dart';

class HorizontalTechView extends StatelessWidget {
  const HorizontalTechView({
    Key? key,
    required this.screenSize,
    required this.projects,
  }) : super(key: key);

  final Size screenSize;
  final Projects projects;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width,
      height: 45,
      child: ScrollConfiguration(
        behavior: MyCustomScrollBehavior(),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: projects.technologies.length,
          itemBuilder: (context, index) {
            return IntroCard(text: projects.technologies[index]);
          },
        ),
      ),
    );
  }
}
