import 'package:flutter/material.dart';

class LearnWidget extends StatelessWidget {
  final double lebar, tinggi;
  const LearnWidget({required this.lebar, required this.tinggi, super.key});

  @override
  Widget build(BuildContext context) {
    List<LearnModel> dataLearn = [
      LearnModel(
          title: "Design System UI/UX design",
          subtitle: "Product Designer",
          id: 1,
          progress: 60),
      LearnModel(
          title: "Design Poster In Adobe Photoshop",
          subtitle: "Product Designer",
          id: 2,
          progress: 80),
    ];
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(dataLearn.length, (index) {
        LearnModel dataLoop = dataLearn[index];
        return Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: (lebar / 2) - 10,
                height: tinggi / 6.5,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(dataLoop.subtitle!),
              const SizedBox(
                height: 5,
              ),
              Text(dataLoop.title!),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: (lebar / 2) - 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Completed '),
                    Text('${dataLoop.progress} %'),
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}

class LearnModel {
  String? title, subtitle;
  late int id, progress;

  LearnModel({
    this.title,
    required this.subtitle,
    required this.id,
    required this.progress,
  });
}
