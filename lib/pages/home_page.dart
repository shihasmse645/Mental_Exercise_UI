import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ui_challenge_1/utils/emoticon_face.dart';

import '../utils/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.message),label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.person),label: '')

      ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Hi Jared!",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 8,),
                      Text("23 Jan, 2023",style: TextStyle(color: Colors.blue[100],))
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)
                    ),
                    padding: const EdgeInsets.all(12),
                    child: const Icon(Icons.notifications,color: Colors.white,)
                    )
                  ],
                            ),
                ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(12)
              ),
              padding: const EdgeInsets.all(12),
              child: Row(
                children:const [
                   Icon(Icons.search,color: Colors.white,),
                   SizedBox(width: 5,),
                   Text("Search",style: TextStyle(
                    color: Colors.white
                  ),)
                ],
                
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                 Text("How Do You Feel",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                 Icon(Icons.more_horiz,color: Colors.white,)
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
              children: [
               Column(
                 children:const [
                   EmoticonFace(emoticonFace: "😞"),
                   SizedBox(height: 8,),
                   Text("Bad",style: TextStyle(
                    color: Colors.white
                  ))
                 ],
               ),
            const SizedBox(width: 10,),
               Column(
                 children:const [
                   EmoticonFace(emoticonFace: "😊"),
                   SizedBox(height: 8,),
                   Text("Fine",style: TextStyle(
                    color: Colors.white
                  ))
                 ],
               ),
            const SizedBox(width: 10,),
            Column(
                 children:const [
                   EmoticonFace(emoticonFace: "😆"),
                   SizedBox(height: 8,),
                   Text("Well",style: TextStyle(
                    color: Colors.white
                  ))
                 ],
               ),
            const SizedBox(width: 10,),
            Column(
                 children:const [
                   EmoticonFace(emoticonFace: "🤣"),
                   SizedBox(height: 8,),
                   Text("Joyful",style: TextStyle(
                    color: Colors.white
                  ))
                 ],
               ),
            ],),
              ],
            ),
          ),
          const SizedBox(height: 25,),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(25),
              color: const Color.fromARGB(229, 233, 227, 227),
              child: Center(
                child: Column(
                  children: [Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Exercises",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Expanded(
                    child: ListView(
                      children:const [
                         ExerciseTile(
                          color: Color.fromARGB(255, 26, 144, 242),
                          leadIcon: Icon(Icons.favorite,color: Colors.white),
                          exerciseName: "Speaking Skills",
                          numberOfExcercise: "10 Exercises",
                          trailIcon:Icon(Icons.more_horiz) ,
                        ),
                         ExerciseTile(
                          color: Color.fromARGB(255, 4, 60, 6),
                          leadIcon: Icon(Icons.person,color: Colors.white,),
                          exerciseName: "Reading Skills",
                          numberOfExcercise: "8 Exercises",
                          trailIcon:Icon(Icons.more_horiz) ,
                        ),
                         ExerciseTile(
                          color: Color.fromARGB(255, 107, 97, 97),
                          leadIcon: Icon(Icons.start,color: Colors.white),
                          exerciseName: "Writing Skills",
                          numberOfExcercise: "10 Exercises",
                          trailIcon:Icon(Icons.more_horiz) ,
                        ),

                      ],
                    ),
                  )
                  ],
                ),
              ),
                    ))
          ],
      ),
    );
  }
}