import 'dart:js';

import 'package:flutter/material.dart';
import 'package:my_portfilio/ScrollOnWeb.dart';
import 'package:my_portfilio/models/fake_data/data_project.dart';
import 'package:my_portfilio/pages/details/project_detail.dart';
import 'package:my_portfilio/pages/home/components/label.dart';
import 'package:my_portfilio/pages/home/components/project_card.dart';
import 'package:my_portfilio/responsive/responsive.dart';

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
        Responsive(
            mobile: mobileTabletBuilder(365),
            tablet: mobileTabletBuilder(400),
            desktop: desktopBuilder()),
      ],
    );
  }

  Widget mobileTabletBuilder(double height) {
    return SizedBox(
      height: height,
      child: ScrollConfiguration(
        behavior: MyCustomScrollBehavior(),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: projects.length,
          itemBuilder: (context, index) {
            return ProjectCard(
                projects: projects[index],
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProjectDetail(
                                projects: projects[index],
                                press: () => Navigator.pop(context),
                              )));
                });
            // showDialog(
            //     context: context,
            //     builder: (context) {
            //       return AlertDialog(
            //         title: Text("You clicked ${projects[index].name}"),
            //       );
            //     })
          },
        ),
      ),
    );
  }

  Widget desktopBuilder() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return ProjectCard(
            projects: projects[index],
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProjectDetail(
                            projects: projects[index],
                            press: () => Navigator.pop(context),
                          )));
            });
      },
    );
  }
}
