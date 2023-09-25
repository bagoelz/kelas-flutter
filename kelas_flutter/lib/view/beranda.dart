import 'package:flutter/material.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    Size ukuran = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: ukuran.height,
        width: ukuran.width,
        color: Colors.green,
        child: Stack(
          children: [
            Container(
              height: ukuran.height / 4,
              width: ukuran.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
            ),
            Positioned(
              top: ukuran.height / 4.5,
              child: Container(
                height: ukuran.height - (ukuran.height / 4.5),
                width: ukuran.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  children: [
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              child: SizedBox(
                width: ukuran.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: ukuran.width - 20,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButtonTheme(
                            child: InkWell(
                                onTap: () => print('satu'),
                                child: Column(
                                  children: [
                                    const Icon(
                                      Icons.call,
                                      size: 15,
                                    ),
                                    Text('Panggil')
                                  ],
                                )),
                            data: IconButtonThemeData(style: ButtonStyle()),
                          ),
                          IconButton(
                            onPressed: () => print('dua'),
                            icon: Icon(Icons.camera),
                          ),
                          IconButton(
                            onPressed: () => print('tiga'),
                            icon: Icon(Icons.chat),
                          ),
                          IconButton(
                            onPressed: () => print('empat'),
                            icon: Icon(Icons.people),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
