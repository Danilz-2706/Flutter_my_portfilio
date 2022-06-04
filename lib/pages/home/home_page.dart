import 'package:flutter/material.dart';
import 'package:my_portfilio/pages/home/components/header.dart';
import 'package:my_portfilio/pages/home/components/label.dart';
import 'package:my_portfilio/pages/widgets/Cards/intro_card.dart';
import 'package:my_portfilio/pages/widgets/Cards/project_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //header
                  Header(
                    username: "Danilz",
                  ),
                  SizedBox(height: 25),
                  Label(
                    label: "Projects",
                  ),
                  SizedBox(height: 10),

                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView(children: const [
                      ProjectCard(
                        name: "My Project",
                        year: "2022",
                        img:
                            "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
                        info:
                            """Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime sint commodi repudiandea consequuntur voluptatum laborum""",
                      ),
                      ProjectCard(
                        name: "My Project",
                        year: "2022",
                        img:
                            "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
                        info:
                            """Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime sint commodi repudiandea consequuntur voluptatum laborum""",
                      ),
                      ProjectCard(
                        name: "My Project",
                        year: "2022",
                        img:
                            "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
                        info:
                            """Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime sint commodi repudiandea consequuntur voluptatum laborum""",
                      ),
                      ProjectCard(
                        name: "My Project",
                        year: "2022",
                        img:
                            "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
                        info:
                            """Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime sint commodi repudiandea consequuntur voluptatum laborum""",
                      ),
                    ]),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: const [
                  //     Padding(
                  //       padding: EdgeInsets.all(25.0),
                  //       child: IntroCard(
                  //         text: "Welcome! My name is Danilz Dinh",
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: EdgeInsets.all(25.0),
                  //       child: IntroCard(
                  //         text: "Welcome! My name is Danilz Dinh",
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: EdgeInsets.all(25.0),
                  //       child: IntroCard(
                  //         text: "Welcome! My name is Danilz Dinh",
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
