class BadgeModel {
  final String name;
  final String imagePath;
  final String description;

  BadgeModel({
    required this.name,
    required this.imagePath,
    required this.description,
  });

  factory BadgeModel.fromJson(Map<String, dynamic> json) {
    return BadgeModel(
      name: json['name'],
      imagePath: json['imagePath'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'imagePath': imagePath,
    'description': description,
  };
}
// Badge Model
