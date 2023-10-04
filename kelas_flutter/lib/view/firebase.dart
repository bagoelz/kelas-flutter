import 'package:flutter/material.dart';
import 'package:kelas_flutter/component/button.dart';
import 'package:kelas_flutter/shared/constant.dart';

class FirebaseDemo extends StatefulWidget {
  const FirebaseDemo({super.key});

  @override
  State<FirebaseDemo> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FirebaseDemo> {
  simpan() {
    // firestore.set({
    //   "tas": {"nama": "agus", "umur": 19}
    // });
    firestore.set({"ini": "firma"});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: Alignment.center,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: RoundedButton(
                label: 'Simpan',
                onSentuh: () => simpan(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
