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

List<LearnModel> dataLearn = [
  LearnModel(
      title: "Design System UI/UX design",
      subtitle: "Product Designer",
      image: "assets/kelas_flutter.png",
      id: 1,
      progress: 60),
  LearnModel(
      title: "Design Poster In Adobe Photoshop",
      subtitle: "Product Designer",
      id: 2,
      progress: 80),
];
