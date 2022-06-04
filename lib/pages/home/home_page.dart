import 'package:flutter/material.dart';
import 'package:my_portfilio/pages/home/components/header.dart';
import 'package:my_portfilio/pages/widgets/Cards/intro_card.dart';

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header
                const Header(
                  username: "Danilz",
                ),
                Row(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(25.0),
                      child: IntroCard(
                        text: "Welcome! My name is Danilz Dinh",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(25.0),
                      child: IntroCard(
                        text: "Welcome! My name is Danilz Dinh",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(25.0),
                      child: IntroCard(
                        text: "Welcome! My name is Danilz Dinh",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
