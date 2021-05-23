import 'dart:io';

import 'package:practice/pages/home_page.dart';
import 'package:practice/pages/practice_day1.dart';
import 'package:practice/pages/practice_day2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'Practice Widgets'),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         actions: [
//           FlatButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => BuildScreen2()),
//                 );
//               },
//               child: Icon(Platform.isIOS? Icons.arrow_forward_ios : Icons.arrow_forward, color: Colors.white,),
//           ),
//         ],
//       ),
//       body: BuildScreen1(),
//     );
//   }
// }
