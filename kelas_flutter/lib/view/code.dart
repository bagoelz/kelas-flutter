import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Biodata {
  late String nama;
  late int umur;
  Biodata({required this.nama, required this.umur});
  Biodata.dariLoop(dynamic item) {
    nama = item['nama'];
    umur = item['umur'];
  }
}

class BelajarCode extends StatelessWidget {
  const BelajarCode({super.key});

  @override
  Widget build(BuildContext context) {
    List nama = [
      {'nama': 'Andi', 'umur': 18},
      {'nama': 'Budi', 'umur': 20},
      {'nama': 'Caca', 'umur': 17}
    ];
    cetakData() {
      List<Biodata> bioData = [];
      nama.forEach((item) {
        bioData.add(Biodata.dariLoop(item));
      });

      print(bioData[1].nama);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('HALAMAN CODE'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => cetakData(), child: const Text('Check'))
          ],
        ),
      ),
    );
  }
}
