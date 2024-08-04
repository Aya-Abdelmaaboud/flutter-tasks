class AlbumsModel {
  final int userId;
  final int id;
  final String title;

  AlbumsModel({
    required this.userId,
    required this.id,
    required this.title,
  });

  // Factory method to create an instance from JSON
  factory AlbumsModel.fromJson(Map<String, dynamic> json) {
    return AlbumsModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
    };
  }

  // Static method to create a list of instances from JSON
  static List<AlbumsModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => AlbumsModel.fromJson(json)).toList();
  }

  // Static method to convert a list of instances to JSON
  static List<Map<String, dynamic>> toJsonList(List<AlbumsModel> models) {
    return models.map((model) => model.toJson()).toList();
  }
}
