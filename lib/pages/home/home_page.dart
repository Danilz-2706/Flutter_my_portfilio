import 'package:flutter/material.dart';
import 'package:my_portfilio/pages/home/components/header.dart';
import 'package:my_portfilio/pages/home/components/projects_list.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 44, 44, 44),
        onPressed: () {
          print("pressed Share button!");
        },
        child: const Icon(
          Icons.share,
          color: Colors.white,
        ),
      ),
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
                children: const [
                  //header
                  Header(
                    username: "Danilz",
                    avatar: "assets/images/avataaars.png",
                  ),
                  SizedBox(height: 25),
                  Projects(),
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
