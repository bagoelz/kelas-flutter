class LearnModel {
  late String title, subtitle;
  late int id, progress;
  String? image;
  LearnModel({
    required this.title,
    required this.subtitle,
    required this.id,
    this.image,
    required this.progress,
  });
}
