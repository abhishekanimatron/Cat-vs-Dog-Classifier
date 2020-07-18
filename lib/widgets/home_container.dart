import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'animal_photo.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 100),
          Center(
            child: Shimmer.fromColors(
              baseColor: Colors.black87,
              highlightColor: Colors.black38,
              child: Text(
                'Cat         Dog',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AnimalPhoto(title: 'catWon.jpg'),
              SizedBox(child: Text('vs',style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),),
              AnimalPhoto(title: 'dogWon.jpg'),
            ],
          ),
          Container(
            width: 220,
            height: 220,
            child: Center(
              child: Image.network(
                'https://lh3.googleusercontent.com/proxy/xKhjLSKkKLUF5FB3NPbOAEVtZXKrKj-bWE7x7Kx6uq6GYMwOdUgv2nSqUu8BUDaFC1PH9Cp8vLt9AHuThsMLnZHk33SwiFdkVU6C36mPFhQNkyK2yTfaG_Mfvu3YhmjI',
              ),
            ),
          ),
          SizedBox(height: 50),
          Text(
            'Upload here!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Container(
            width: 30,
            height: 30,
            child: Center(
              child: Image.network(
                'https://icon-library.com/images/arrow-down-icon/arrow-down-icon-15.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
