import 'package:flutter/material.dart';
import 'package:kelas_flutter/model/learn.dart';

class LearnWidget extends StatelessWidget {
  final void Function()? onSentuh;
  final double lebar, tinggi;
  final List<LearnModel> dataTampil;
  const LearnWidget(
      {required this.lebar,
      required this.tinggi,
      required this.dataTampil,
      this.onSentuh,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(dataTampil.length, (index) {
        LearnModel dataLoop = dataTampil[index];
        return InkWell(
          onTap: () => onSentuh,
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: (lebar / 2) - 10,
                  height: tinggi / 6.5,
                  decoration: dataLoop.image != null
                      ? BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(dataLoop.image!),
                              fit: BoxFit.cover),
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15))
                      : BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(dataLoop.subtitle),
                const SizedBox(
                  height: 5,
                ),
                Text(dataLoop.title),
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
          ),
        );
      }),
    );
  }
}
