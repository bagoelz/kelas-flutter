import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelas_flutter/controller/User.dart';
import 'package:kelas_flutter/model/user.dart';

class UserScreen extends GetView<UserController> {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(controller.dataUser.length, (index) {
                  PesertaModel user = controller.dataUser[index];
                  return Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width - 20,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () => controller.tukarStatus(
                                        user.selected, index),
                                    child: Row(
                                      children: [
                                        user.selected == true
                                            ? const Icon(
                                                Icons.favorite,
                                                color: Colors.red,
                                              )
                                            : const Icon(Icons.favorite),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(user.nama!),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () => controller.hapusData(index),
                                    child: const Icon(
                                      Icons.close,
                                      color: Colors.red,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => controller.rubahNama(index),
                                    child: const Icon(
                                      Icons.change_circle,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider()
                    ],
                  );
                }),
              ),
            ),
          ),
        ));
  }
}
