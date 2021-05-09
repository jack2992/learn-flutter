import 'package:flutter/material.dart';

class BuildScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: AlwaysScrollableScrollPhysics(),
      children: [
        Container(
          width: 428.0,
          height: 535.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/a.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 51.0,
              height: 183.0,
              decoration: BoxDecoration(
                color: const Color(0xff313036),
              ),
            ),
            Container(
              width: 51.0,
              height: 183.0,
              decoration: BoxDecoration(
                color: const Color(0xff1b304b),
              ),
            ),
            Container(
              width: 51.0,
              height: 183.0,
              decoration: BoxDecoration(
                color: const Color(0xff344869),
              ),
            ),
            Container(
              width: 51.0,
              height: 183.0,
              decoration: BoxDecoration(
                color: const Color(0xffb1b8c0),
              ),
            ),
            Container(
              width: 51.0,
              height: 183.0,
              decoration: BoxDecoration(
                color: const Color(0xffd5d5d5),
              ),
            ),
            Container(
              width: 51.0,
              height: 183.0,
              decoration: BoxDecoration(
                color: const Color(0xfff1f1ef),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
