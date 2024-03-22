import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  List<String> skills = ["UI/UX", "Java", "Android", "Flutter"];

  List<String> levels = [
    "Intermediate",
    "Advanced",
    "Intermediate",
    "Advanced"
  ];

  @override
  Widget build(BuildContext context) {
    double skillsContainerHeight =
        53.0 * skills.length;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                width: 370,
                height: 200,
                decoration: BoxDecoration(
                  color: HexColor("69392A"),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    )
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("           "),
                        const Text(
                          "BIO",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Center(
                      child: Text(
                        "Hi, I am Cilian Murphy.\n I would like to identify myself as an Android Developer and a Java Enthusiast.",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/github.png"),
                                        scale: 0.8)),
                              ),
                              const Text(
                                "Github",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          const Column(
                            children: [
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Icon(
                                  Icons.link_sharp,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Website ",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          const Column(
                            children: [
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Icon(
                                  Icons.mail,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Mail",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 20, bottom: 15),
                width: 370,
                height: skillsContainerHeight + 100, // Updated height
                decoration: BoxDecoration(
                  color: HexColor("69392A"),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    )
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("           "),
                        const Text(
                          "SKILLS",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: ListView.builder(
                          itemCount: skills.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                color: Colors.brown,
                              ),
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.fromLTRB(20, 5, 20, 8),
                              width: 250,
                              height: 50,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      skills[index],
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      levels[index],
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}