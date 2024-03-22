import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:inovact_new/profile/about_fragment.dart';
import 'package:inovact_new/profile/ideas_fragment.dart';
import 'package:inovact_new/profile/project_fragment.dart';
import 'package:inovact_new/profile/thoughts_fragment.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> items = ["About", "Projects", "Ideas", "Thoughts"];

  List<IconData> icons = [
    Icons.person,
    Icons.settings,
    Icons.lightbulb,
    Icons.bubble_chart,
  ];

  List<Widget> pages = [
    const AboutPage(),
    const ProjectsPage(),
    const IdeasPage(),
    const ThoughtsPage(),
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/pcimg.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 105, 0, 0),
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      image: DecorationImage(
                          image: AssetImage("assets/person.jpg"),
                          fit: BoxFit.fill)),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 165, 0, 0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/coins.jpg",
                      width: 30,
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "120 coins",
                          style: TextStyle(
                              color: HexColor("69392A"),
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "How to earn points?",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.orangeAccent,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Center(
            child: Container(
                margin: const EdgeInsets.only(top: 7),
                child: Text(
                  "Cilian Murphy",
                  style: TextStyle(
                      color: HexColor("69392A"),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )),
          ),
          Center(
            child: Text(
              "UI/UX Designer || Java Developer || Android Developer",
              style: TextStyle(
                  color: HexColor("69392A"),
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(18, 5, 10, 2),
            child: SizedBox(
              height: 55,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.all(4),
                            width: current == index ? 95 : 80,
                            height: 45,
                            decoration: BoxDecoration(
                                color: HexColor("69392A"),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(25)),
                                border: current == index
                                    ? Border.all(color: Colors.black, width: 2)
                                    : null),
                            child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 7),
                                    child: Center(
                                      child: Icon(
                                        icons[index],
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ),
    Container(margin: const EdgeInsets.only(top: 2),
              width: double.infinity,
              height: 385,
              color: Colors.white,
                child: Scaffold(
                  body: pages[current],
                ),
              ),
        ],
      ),
    );
  }
}
