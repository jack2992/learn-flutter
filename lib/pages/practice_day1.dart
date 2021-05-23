import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/utils/color_resource.dart';
import 'package:practice/widget/color_palette.dart';

class BuildScreen1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // hide status bar
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 60,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/a.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Center(
              child: Text(
                'color palette',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 40,
                  color: ColorResource.aColor,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: BuildWidgetColor(ColorResource.bColor, false),
                ),
                Expanded(
                  child: BuildWidgetColor(ColorResource.cColor, false),
                ),
                Expanded(
                  child: BuildWidgetColor(ColorResource.dColor, false),
                ),
                Expanded(
                  child: BuildWidgetColor(ColorResource.eColor, false),
                ),
                Expanded(
                  child: BuildWidgetColor(ColorResource.fColor, false),
                ),
                Expanded(
                  child: BuildWidgetColor(ColorResource.gColor, false),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
