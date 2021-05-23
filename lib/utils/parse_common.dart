import 'dart:convert';

import 'package:practice/model/widget_item.dart';

class ParserJson {
  static Future<List<T>> parseWidgets<T>(String responseBody) async {
    await Future.delayed(const Duration(seconds: 3), () {});

    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<T>((json) => WidgetItem.fromJson(json)).toList();
  }
}
