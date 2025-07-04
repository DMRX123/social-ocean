class UserModel {
  final String id;
  final String name;
  final String email;
  final String role; // student, reel maker, etc.
  final String badge; // VIP, King, Queen, etc.
  final int followers;
  final bool isImportant;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.badge,
    required this.followers,
    this.isImportant = false,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      role: json['role'],
      badge: json['badge'],
      followers: json['followers'],
      isImportant: json['isImportant'] ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    'role': role,
    'badge': badge,
    'followers': followers,
    'isImportant': isImportant,
  };
}
// User Model
