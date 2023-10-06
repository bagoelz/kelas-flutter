import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kelas_flutter/component/button.dart';
import 'package:kelas_flutter/model/bioData.dart';
import 'package:kelas_flutter/shared/constant.dart';
import 'package:kelas_flutter/shared/extension.dart';
import 'package:kelas_flutter/view/code.dart';

class FirebaseDemo extends StatefulWidget {
  const FirebaseDemo({super.key});

  @override
  State<FirebaseDemo> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FirebaseDemo> {
  CollectionReference dataRef = FirebaseFirestore.instance.collection("debug");
  List<BioData> dataPengguna = <BioData>[];
  simpan() {
    // firestore.set({
    //   "tas": {"nama": "agus", "umur": 19}
    // });
    //dataRef.add({"ini": "firma"});
    //hapus
    //dataRef.doc('satu').delete();
    //edit
    //dataRef.doc('satu').update({});
  }

  getData() {
    dataPengguna = [];

    dataRef.get().then((value) {
      value.docs.forEach((element) {
        setState(() {
          dataPengguna.add(BioData.map(element, element.id));
        });
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: media.height - 80,
            width: media.width,
            child: ListView(
              children: List.generate(dataPengguna.length, (index) {
                BioData bio = dataPengguna[index];
                return Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: 80,
                        child: RoundedButton(
                          label: 'Add',
                          icon: const Icon(
                            Icons.add,
                            size: 15,
                          ),
                          onSentuh: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          bio.nama!,
                          style: context.bodyLarge,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          bio.gender!,
                          style: context.bodyLarge,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          bio.email!,
                          style: context.bodyLarge,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          bio.alamat!,
                          style: context.bodyLarge,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        RoundedButton(
                          label: 'Del',
                          icon: const Icon(
                            Icons.close,
                            size: 15,
                          ),
                          onSentuh: () {},
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        RoundedButton(
                          label: 'edit',
                          icon: const Icon(
                            Icons.edit,
                            size: 15,
                          ),
                          onSentuh: () {},
                        ),
                      ],
                    ),
                    const Divider()
                  ],
                );
              }),
            ),
          ),
          // Container(
          //   alignment: Alignment.center,
          //   child: SizedBox(
          //     width: MediaQuery.of(context).size.width / 2,
          //     child: RoundedButton(
          //       label: 'Simpan',
          //       onSentuh: () => simpan(),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
