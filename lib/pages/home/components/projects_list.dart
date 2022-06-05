import 'package:flutter/material.dart';
import 'package:my_portfilio/ScrollOnWeb.dart';
import 'package:my_portfilio/models/fake_data/data_project.dart';
import 'package:my_portfilio/pages/home/components/label.dart';
import 'package:my_portfilio/pages/home/components/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Label(
          label: "Projects",
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 365,
          child: ScrollConfiguration(
            behavior: MyCustomScrollBehavior(),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: projects.length,
              itemBuilder: (context, index) {
                return ProjectCard(
                    projects: projects[index],
                    press: () => showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("You clicked ${projects[index].name}"),
                          );
                        }));
              },
            ),
          ),
        ),
      ],
    );
  }
}
