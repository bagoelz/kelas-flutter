import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';

DocumentReference firestore =
    FirebaseFirestore.instance.collection("debug").doc("satu");
