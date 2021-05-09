import 'package:flutter/material.dart';

class BuildScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              'color palette',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 40,
                color: const Color(0xff707070),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 60,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xffaca9be),
                  shape: BoxShape.circle,
                  border: new Border.all(
                      color: Colors.white,
                      width: 3.0,
                      style: BorderStyle.solid),
                ),
              ),
              Container(
                width: 60,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xffe1d1de),
                  shape: BoxShape.circle,
                  border: new Border.all(
                      color: Colors.white,
                      width: 3.0,
                      style: BorderStyle.solid),
                ),
              ),
              Container(
                width: 60,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xffeee3eb),
                  shape: BoxShape.circle,
                  border: new Border.all(
                      color: Colors.white,
                      width: 3.0,
                      style: BorderStyle.solid),
                ),
              ),
              Container(
                width: 60,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xfff6f0f4),
                  shape: BoxShape.circle,
                  border: new Border.all(
                      color: Colors.white,
                      width: 3.0,
                      style: BorderStyle.solid),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 60,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xff3c483a),
                  shape: BoxShape.circle,
                  border: new Border.all(
                      color: Colors.white,
                      width: 3.0,
                      style: BorderStyle.solid),
                ),
              ),
              Container(
                width: 60,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xff354035),
                  shape: BoxShape.circle,
                  border: new Border.all(
                      color: Colors.white,
                      width: 3.0,
                      style: BorderStyle.solid),
                ),
              ),
              Container(
                width: 60,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xffa9aac0),
                  shape: BoxShape.circle,
                  border: new Border.all(
                      color: Colors.white,
                      width: 3.0,
                      style: BorderStyle.solid),
                ),
              ),
              Container(
                width: 60,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xffbab2c7),
                  shape: BoxShape.circle,
                  border: new Border.all(
                      color: Colors.white,
                      width: 3.0,
                      style: BorderStyle.solid),
                ),
              ),
            ],
          ),
          Container(
            width: 428.0,
            height: 642.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/a.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
