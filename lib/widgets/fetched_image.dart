import 'package:flutter/material.dart';
import 'dart:io';

class FetchedImage extends StatelessWidget {
  const FetchedImage({
    Key key,
    @required File image,
  })  : _image = image,
        super(key: key);

  final File _image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //Here goes the same radius, u can put into a var or function
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0x54000000),
            spreadRadius: 0.1,
            blurRadius: 15,
          ),
        ],
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.file(
            _image,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
