import 'package:flutter/material.dart';
import 'package:my_portfilio/ScrollOnWeb.dart';
import 'package:my_portfilio/intro_card.dart';
import 'package:my_portfilio/models/project.dart';
import 'package:my_portfilio/pages/details/components/header_detail_project.dart';
import 'package:my_portfilio/pages/details/components/horizontal_tech_view.dart';
import 'package:my_portfilio/pages/home/components/label.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({
    Key? key,
    required this.projects,
    required this.press,
  }) : super(key: key);

  final Projects projects;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: SizedBox(
            width: screenSize.width,
            height: screenSize.height,
            child: ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HeaderDetail(
                        press: press,
                        name: projects.name,
                        year: projects.year,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Hero(
                        tag: projects.name,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.network(
                            projects.img,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Label(label: "Technologies"),
                      const SizedBox(
                        height: 10,
                      ),
                      HorizontalTechView(
                          screenSize: screenSize, projects: projects),
                      const SizedBox(
                        height: 20,
                      ),
                      const Label(label: "Description"),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(projects.info == null ? "" : "${projects.info}"),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
