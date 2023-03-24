import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final Icon leadIcon;
  final Icon trailIcon;
  final String exerciseName;
  final String numberOfExcercise;
  final color;
  const ExerciseTile(
      {super.key,
      required this.leadIcon,
      required this.exerciseName,
      required this.numberOfExcercise,
      required this.trailIcon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: ListTile(
          leading: Container(
              decoration:  BoxDecoration(
                  color:color,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(8),
              child:leadIcon ),
          title: Text(exerciseName),
          subtitle: Text(numberOfExcercise),
          //trailing: trailIcon,
        ),
      ),
    );
  }
}
