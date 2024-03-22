import 'package:flutter/material.dart';

class ThoughtsPage extends StatefulWidget {
  const ThoughtsPage({super.key});

  @override
  State<ThoughtsPage> createState() => _ThoughtsPageState();
}

class _ThoughtsPageState extends State<ThoughtsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.list, size: 70,color: Colors.black45,),
                Text("No Data", style: TextStyle(fontSize: 40,color: Colors.black45),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
