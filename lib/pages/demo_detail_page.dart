import 'package:flutter/material.dart';
import 'package:practice/model/widget_item.dart';
import 'package:practice/pages/practice_day1.dart';
import 'package:practice/pages/practice_day2.dart';
import 'package:practice/pages/practice_day3.dart';

class WidgetDemoPage extends StatefulWidget {
  final WidgetItem widgetItem;
  const WidgetDemoPage({Key key, this.widgetItem}) : super(key: key);

  @override
  _WidgetDemoPageState createState() => _WidgetDemoPageState();
}

class _WidgetDemoPageState extends State<WidgetDemoPage> {
  List<dynamic> widgets = [
    BuildScreen1(),
    BuildScreen2(),
    SplashPage()
  ];
  @override
  Widget build(BuildContext context) {
    return widgets[this.widget.widgetItem.id];
  }
}
