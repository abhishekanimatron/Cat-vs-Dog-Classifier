
import 'package:flutter/material.dart';

class AnimalPhoto extends StatelessWidget {
  final String title;
  AnimalPhoto({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      height: 160.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assets/images/$title',
          ),
        ),
      ),
    );
  }
}
