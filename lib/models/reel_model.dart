class ReelModel {
  final String id;
  final String userId;
  final String videoUrl;
  final String caption;
  final DateTime uploadedAt;
  final bool isNews;

  ReelModel({
    required this.id,
    required this.userId,
    required this.videoUrl,
    required this.caption,
    required this.uploadedAt,
    this.isNews = false,
  });

  factory ReelModel.fromJson(Map<String, dynamic> json) {
    return ReelModel(
      id: json['id'],
      userId: json['userId'],
      videoUrl: json['videoUrl'],
      caption: json['caption'],
      uploadedAt: DateTime.parse(json['uploadedAt']),
      isNews: json['isNews'] ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'videoUrl': videoUrl,
    'caption': caption,
    'uploadedAt': uploadedAt.toIso8601String(),
    'isNews': isNews,
  };
}
// Reel Model
