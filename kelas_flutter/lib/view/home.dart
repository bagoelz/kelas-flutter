import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kelas_flutter/component/button.dart';
import 'package:kelas_flutter/model/learn.dart';
import 'package:kelas_flutter/view/code.dart';
import 'package:kelas_flutter/view/drawer/drawer.dart';
import 'package:kelas_flutter/view/learn.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int angka = 0;
  final menuBawah = BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.call),
        label: 'Calls',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.camera),
        label: 'Camera',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.chat),
        label: 'Chats',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.people),
        label: 'Profile',
      ),
    ],
  );

  nambahAngka(index, LearnModel data) {
    // setState(() {
    //   angka++;
    // });
    setState(() {
      // dataLearn.add(
      //   LearnModel(
      //       title: "Design System UI/UX design ${dataLearn.length + 1}",
      //       subtitle: "Product Designer",
      //       image: "assets/kelas_flutter.png",
      //       id: dataLearn.length + 1,
      //       progress: 70),
      // );
      dataLearn[index] = data;
    });

    for (LearnModel result in dataLearn) {
      print(result.title);
    }
  }

  @override
  Widget build(BuildContext context) {
    double lebar = MediaQuery.of(context).size.width;
    double tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: const DrawerPage(),
      endDrawer: const DrawerPage(),
      appBar: AppBar(
        title: const Text(
          'BERANDA',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DateFormat('dd, MMMM y').format(DateTime.now()),
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'JIMMY FEBRIAN',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  // const CircleAvatar(
                  //   foregroundColor: Colors.blue,
                  //   backgroundColor: Colors.transparent,
                  //   radius: 60.0,
                  // ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: lebar - 20,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Find your course',
                        style: TextStyle(
                            fontSize: 12, color: Colors.grey.shade900),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Continue Learn',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Icon(Icons.more)
                ],
              ),
              SizedBox(
                width: lebar - 20,
                height: tinggi / 3,
                child: Scrollbar(
                  child: LearnWidget(
                    dataTampil: dataLearn,
                    lebar: lebar - 20,
                    tinggi: tinggi,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // Text(
              //   '$angka',
              //   style:
              //       const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              // ),
              // RoundedButton(onSentuh: () {}, label: "Tambah"),
              // ElevatedButton(onPressed: onPressed, child: child)
              // IconButton(onPressed: onPressed, icon: icon)
              // SizedBox(
              //   width: lebar / 3,
              //   child: RoundedButton(
              //     onSentuh: () => Navigator.of(context).push(
              //         MaterialPageRoute(builder: (context) => BelajarCode())),
              //     label: 'Pindah Halaman',
              //     icon: const Icon(
              //       Icons.chevron_right,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.all(10),
              //   decoration: BoxDecoration(
              //       border: Border.all(color: Colors.green), color: Colors.red),
              //   child: const Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Icon(
              //         Icons.chevron_right,
              //         size: 20,
              //       ),
              //       Text(
              //         "1",
              //         style: TextStyle(fontSize: 40),
              //       ),
              //     ],
              //   ),
              // ),
              // Divider(
              //   color: Colors.red,
              // ),
              // Text(
              //   "3",
              //   style: TextStyle(fontSize: 40),
              // ),
            ]),
      ),
      bottomNavigationBar: menuBawah,
      // floatingActionButton: Align(
      //   alignment: Alignment.bottomLeft,
      //   child: Padding(
      //     padding: const EdgeInsets.only(left: 20),
      //     child: FloatingActionButton(
      //       child: Icon(
      //         Icons.location_on,
      //         color: Colors.red,
      //       ),
      //       onPressed: () {},
      //     ),
      //   ),
      // ),
    );
  }
}
