import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:inovact_new/home/ideas_tab.dart';
import 'package:inovact_new/home/projects_tab.dart';
import 'package:inovact_new/home/thoughts_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
                labelColor: HexColor("69392A"),
                indicatorColor: HexColor("69392A"),
                tabs: const [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings_suggest_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Projects")
                      ],
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.only(left: 14.0),
                      child: Row(
                        children: [
                          Icon(Icons.light_mode_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Ideas")
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Icon(Icons.leak_add_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Thoughts")
                      ],
                    ),
                  ),
                ]),
            const Expanded(
              child: TabBarView(
                children: [
                  ProjectsTab(),
                  IdeasTab(),
                  ThoughtsTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
