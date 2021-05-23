class WidgetItem {
  final int id;
  final String name;
  final String description;

  WidgetItem({this.id, this.name, this.description});

  factory WidgetItem.fromJson(Map<String, dynamic> json) {
    return WidgetItem(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
    );
  }
}