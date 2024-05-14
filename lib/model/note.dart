
class Note {
  int id;
  String title;
  String content;
  DateTime modifiedTime;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiedTime,
  });

  // Add a fromJson constructor to deserialize JSON data
  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      modifiedTime: DateTime.parse(json['modifiedTime'] as String),
    );
  }

  // Add a toJson method to serialize Note object to JSON data
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'modifiedTime': modifiedTime.toIso8601String(),
    };
  }
}
