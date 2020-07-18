import 'package:flutter/material.dart';
import 'dart:io';
import 'package:cat_or_dog/widgets/fetched_image.dart';
import 'package:velocity_x/velocity_x.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    Key key,
    @required File image,
    @required List output,
  })  : _image = image,
        _output = output,
        super(key: key);

  final File _image;
  final List _output;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Pet Classifier'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _image == null
              ? Container()
              : FetchedImage(
                  image: _image,
                ),
          16.heightBox,
          _output == null
              ? Text("")
              : Text(
                  _output[0]["label"] == '1 Cat'
                      ? '  It\'s a Cat!  '
                      : '  It\'s a Dog!  ',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFAE6FC),
                    backgroundColor: Color(0xff9700ff),
                  ),
                ),
          50.heightBox,
          Container(
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    _output[0]["label"] == '1 Cat'
            ? 'assets/images/catWon.jpg'
            : 'assets/images/dogWon.jpg',
                  ),
                ),
              ),
            ),
          55.heightBox,
          FlatButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'TRY ANOTHER IMAGE',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            'Powered by Flutter',
            style: TextStyle(
              letterSpacing: 2,
              fontWeight: FontWeight.w300,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
