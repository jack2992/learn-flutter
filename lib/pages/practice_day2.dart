import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/utils/color_resource.dart';
import 'package:practice/widget/color_palette.dart';

class BuildScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Center(
              child: Text(
                'color palette',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 40,
                  color: const Color(0xff707070),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: BuildWidgetColor(ColorResource.hColor, true),
                ),
                Expanded(
                  child: BuildWidgetColor(ColorResource.jColor, true),
                ),
                Expanded(
                  child: BuildWidgetColor(ColorResource.kColor, true),
                ),
                Expanded(
                  child: BuildWidgetColor(ColorResource.lColor, true),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: BuildWidgetColor(ColorResource.mColor, true),
                ),
                Expanded(
                  child: BuildWidgetColor(ColorResource.nColor, true),
                ),
                Expanded(
                  child: BuildWidgetColor(ColorResource.fColor, true),
                ),
                Expanded(
                  child: BuildWidgetColor(ColorResource.gColor, true),
                ),
              ],
            ),
          ),
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
        ],
      ),
    );
  }
}
