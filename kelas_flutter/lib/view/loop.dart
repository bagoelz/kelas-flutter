import 'package:flutter/material.dart';
import 'package:kelas_flutter/shared/extension.dart';

class LoopPage extends StatefulWidget {
  const LoopPage({super.key});

  @override
  State<LoopPage> createState() => _LoopPageState();
}

class _LoopPageState extends State<LoopPage> {
  List angka = [
    {
      "nilai": [
        {"nama": "satu", "umur": 19},
        {"nama": "dua", "umur": 17},
        {"nama": "tiga", "umur": 15},
        {"nama": "empat", "umur": 11},
        {"nama": "lima", "umur": 20},
        {"nama": "enam", "umur": 21},
        {"nama": "tujuh", "umur": 18},
        {"nama": "delapan", "umur": 19},
        {"nama": "sembilan", "umur": 15},
        {"nama": "sepuluh", "umur": 10},
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(angka.length, (i) {
              dynamic data = angka[i];
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${i + 1}',
                        style: context.titleLarge,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        data['nama'],
                        style: context.titleLarge,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${data['umur']}",
                        style: context.titleLarge,
                      ),
                    ],
                  ),
                  const Divider(),
                ],
              );
            })),
      ),
    );
  }
}
