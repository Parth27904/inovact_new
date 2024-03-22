import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ProjectsTab extends StatefulWidget {
  const ProjectsTab({Key? key}) : super(key: key);

  @override
  State<ProjectsTab> createState() => _ProjectsTabState();
}

class _ProjectsTabState extends State<ProjectsTab> {
  List profilePhotos = [
    "assets/biilgates.jpeg",
    "assets/elon.jpg",
    "assets/markzuck.jpg",
    "assets/guido.jpg"
  ];

  List<String> projectName = [
    "Signify",
    "Crytpogen",
    "Techfit",
    "To Do"
  ];

  List<String> projectDesc = [
    "A new way of communication for disabled people.",
    "Crypto trading made handy and reachable for everyone.",
    "Fitness at your doorstep with realtime posture detection.",
    "A simple To Do application to track your bucket list."
  ];

  List<String> ownerName = [
    "Bill Gates",
    "Elon Musk",
    "Mark Zuckerberg",
    "Guido Van Rossum"
  ];

  List<String> ownerDesignation = [
    "Founder",
    "Entrepreneur",
    "Engineer",
    "Developer"
  ];

  List<bool> isFavorite = [false, false, false,false];
  List<bool> isRequested = [false, false, false,false];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
        child: ListView.builder(
          itemCount: projectName.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(8),
              width: 300,
              height: 310,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: const Offset(0, 3),
                  )
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(25)),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 8),
                        width: 360,
                        height: 200,
                        decoration: BoxDecoration(
                          color: HexColor("69392A"),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20.0, 3, 10, 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    projectName[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontFamily: GoogleFonts.aleo().fontFamily,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      height: 35,
                                      width: 90,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Join Now",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(30, 170, 0, 0),
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(profilePhotos[index]),
                            fit: BoxFit.fill,
                            scale: 2,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isRequested[index] = !isRequested[index];
                            ScaffoldMessenger.of(context)
                                .removeCurrentSnackBar();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Center(
                                  child: Text(
                                    isRequested[index]
                                        ? "Request Sent"
                                        : "Request Cancelled",
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ),
                                backgroundColor: HexColor("69392A"),
                                duration: const Duration(seconds: 2),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                margin:
                                    const EdgeInsets.fromLTRB(70, 0, 70, 20),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 2),
                                elevation: 6,
                                action: SnackBarAction(
                                  label: 'Dismiss',
                                  textColor: Colors.white,
                                  onPressed: () {
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                  },
                                ),
                              ),
                            );
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 265, top: 260),
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            color: HexColor("69392A"),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              isRequested[index] ? "Requested" : "Connect",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 135, top: 205),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ownerName[index],
                              style: TextStyle(
                                color: HexColor("69392A"),
                                fontSize: 22,
                                fontFamily: GoogleFonts.aleo().fontFamily,
                              ),
                            ),
                            Text(
                              ownerDesignation[index],
                              style: TextStyle(
                                color: HexColor("69392A"),
                                fontSize: 15,
                                fontFamily: GoogleFonts.aleo().fontFamily,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15, top: 262),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavorite[index] = !isFavorite[index];
                                });
                              },
                              icon: Icon(
                                isFavorite[index]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                size: 27,
                                color: isFavorite[index]
                                    ? Colors.red
                                    : HexColor("69392A"),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.insert_comment_outlined,
                                size: 27,
                                color: HexColor("69392A"),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 180,
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  // Add functionality for Facebook share
                                                  Navigator.pop(context);
                                                },
                                                child: const Column(
                                                  children: [
                                                    Icon(
                                                      FontAwesomeIcons
                                                          .squareFacebook,
                                                      size: 55,
                                                      color: Colors.blue,
                                                    ),
                                                    SizedBox(height: 5),
                                                    Text(
                                                      'Facebook',
                                                      style: TextStyle(
                                                          fontSize: 14),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  // Add functionality for Twitter share
                                                  Navigator.pop(context);
                                                },
                                                child: const Column(
                                                  children: [
                                                    Icon(
                                                      FontAwesomeIcons
                                                          .squareXTwitter,
                                                      size: 55,
                                                      color: Colors.black,
                                                    ),
                                                    SizedBox(height: 5),
                                                    Text(
                                                      'X',
                                                      style: TextStyle(
                                                          fontSize: 14),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  // Add functionality for Instagram share
                                                  Navigator.pop(context);
                                                },
                                                child: Column(
                                                  children: [
                                                    ShaderMask(
                                                      blendMode:
                                                          BlendMode.srcIn,
                                                      shaderCallback: (Rect
                                                              bounds) =>
                                                          const RadialGradient(
                                                        center:
                                                            Alignment.topCenter,
                                                        stops: [.5, .5, 1],
                                                        colors: [
                                                          Colors.purple,
                                                          Colors.pink,
                                                          Colors.orange,
                                                        ],
                                                      ).createShader(bounds),
                                                      child: const Icon(
                                                        FontAwesomeIcons
                                                            .instagram,
                                                        size: 55,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 5),
                                                    const Text(
                                                      'Instagram',
                                                      style: TextStyle(
                                                          fontSize: 14),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  // Add functionality for WhatsApp share
                                                  Navigator.pop(context);
                                                },
                                                child: const Column(
                                                  children: [
                                                    Icon(
                                                      FontAwesomeIcons
                                                          .squareWhatsapp,
                                                      size: 55,
                                                      color: Colors.green,
                                                    ),
                                                    SizedBox(height: 5),
                                                    Text(
                                                      'WhatsApp',
                                                      style: TextStyle(
                                                          fontSize: 14),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(top: 20),
                                            width: 350,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                borderRadius: const BorderRadius.all(
                                                    Radius.circular(50)),
                                                color: HexColor("69392A")),
                                            child: Center(
                                              child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text(
                                                    "Cancel",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25),
                                                  )),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              icon: Icon(
                                Icons.share_outlined,
                                size: 27,
                                color: HexColor("69392A"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 8),
                        margin: const EdgeInsets.only(top: 60, left: 28),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              projectDesc[index],
                              style:
                                  const TextStyle(fontSize:18, color: Colors.white),
                            ),
                            const SizedBox(height: 10,),
                            GestureDetector(
                              onTap: (){},
                              child: const Text(
                                    "Read More",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                    decorationColor: Colors.white),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
