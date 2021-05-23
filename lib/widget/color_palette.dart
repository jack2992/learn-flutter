import 'package:flutter/material.dart';

class BuildWidgetColor extends StatelessWidget {
  final Color color;
  final bool isCircle;

  BuildWidgetColor(this.color, this.isCircle);

  @override
  Widget build(BuildContext context) {
    return _buildWidgetColor(color);
  }

  _buildWidgetColor(Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          shape: isCircle ? BoxShape.circle: BoxShape.rectangle,
          border: new Border.all(
              color: Colors.white,
              width: 2.0,
              style: BorderStyle.solid),
        ),
      ),
    );
  }
}
