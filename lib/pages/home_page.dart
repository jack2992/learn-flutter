import 'package:flutter/material.dart';
import 'package:practice/model/widget_item.dart';
import 'package:practice/pages/demo_detail_page.dart';
import 'package:practice/utils/constants.dart';
import 'package:practice/utils/parse_common.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(1.0, 10.0, 1.0, 10.0),
        child: FutureBuilder<List<WidgetItem>>(
            future: DefaultAssetBundle.of(context).loadStructuredData(
                Constants.WIDGET_JSON,
                (widget) => ParserJson.parseWidgets(widget)),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                print(snapshot.error);
              }
              return snapshot.hasData
                  ? BuildWidgetList(widgets: snapshot.data)
                  : Center(
                      child: CircularProgressIndicator(),
                    );
            }),
      ),
    );
  }
}

// build Widget List
class BuildWidgetList extends StatelessWidget {
  final List<WidgetItem> widgets;

  const BuildWidgetList({Key key, this.widgets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widgets.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                color: Colors.white24,
                alignment: Alignment.center,
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.widgets,
                          color: Colors.lightBlue,
                        ),
                        title: Text(
                          widgets[index].name,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(widgets[index].description),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  WidgetDemoPage(widgetItem: widgets[index]),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        });
  }
}
