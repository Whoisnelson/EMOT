import 'package:demo/emoji/emoji.dart';
import 'package:demo/util/exercise_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.grey.shade100),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
          ],
        ),
      ),
      backgroundColor: Colors.blue.shade800,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 33),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hi, Ayo!',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 35),
                          ),
                          Text(
                            "22 July 2024",
                            style: TextStyle(color: Colors.grey[200]),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade600,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 35),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.blue.shade600),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          Text("search",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EmotIcon(emojIcons: "😔", emojIconsText: "Bad"),
                        EmotIcon(emojIcons: "😔", emojIconsText: "Fine"),
                        EmotIcon(emojIcons: "😔", emojIconsText: "Well"),
                        EmotIcon(emojIcons: "😔", emojIconsText: "Excellent")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.grey.shade100,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Exercise",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 23)),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                      ),
                      // List view
                      Expanded(
                        child: ListView(
                          children: const [
                            ExerciseTile(
                                exerciseNames: "Speaking skills",
                                exerciseIcon: '♥︎',
                                exerciseCount: 16),
                            ExerciseTile(
                                exerciseNames: 'Writing skills',
                                exerciseIcon: '✐',
                                exerciseCount: 8),
                            ExerciseTile(
                                exerciseNames: 'Listening skills',
                                exerciseIcon: '★',
                                exerciseCount: 5),
                            ExerciseTile(
                                exerciseNames: 'Listening skills',
                                exerciseIcon: '★',
                                exerciseCount: 5)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
