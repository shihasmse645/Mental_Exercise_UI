import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;
  const EmoticonFace({super.key, required this.emoticonFace});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(16),
        child:  Text(
          emoticonFace,
          style: TextStyle(fontSize: 20),
        ));
  }
}
