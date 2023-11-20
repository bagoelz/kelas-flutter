import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelas_flutter/component/button.dart';
import 'package:kelas_flutter/component/formfield.dart';
import 'package:kelas_flutter/component/validator.dart';
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
                                  user.edit == false
                                      ? InkWell(
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
                                        )
                                      : const SizedBox(),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  user.edit == false
                                      ? BuildButton(
                                          onDelete: () =>
                                              controller.hapusData(index),
                                          onEdit: () =>
                                              controller.rubahNama(index))
                                      : SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              100,
                                          height: 40,
                                          child: BuildFormEdit(
                                              lebar: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  (100),
                                              save: (val) => controller
                                                  .fungsiEdit(index, val)),
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

class BuildButton extends StatelessWidget {
  final Function()? onDelete;
  final Function()? onEdit;
  BuildButton({required this.onDelete, required this.onEdit, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onDelete,
          child: const Icon(
            Icons.close,
            color: Colors.red,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: onEdit,
          child: const Icon(
            Icons.change_circle,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}

class BuildFormEdit extends StatelessWidget {
  final Function(String?)? save;
  final double lebar;
  const BuildFormEdit({required this.save, required this.lebar, super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController textEdit = TextEditingController();
    return Form(
        key: formKey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: lebar - 65,
              height: 40,
              child: FormInputField(
                labelText: "Nama",
                validateFunction: Validator().validateCharacter,
                keyboardType: TextInputType.text,
                controller: textEdit,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 55,
              child: RoundedButton(
                label: "",
                icon: const Icon(Icons.save),
                onSentuh: () {
                  var form = formKey.currentState;
                  if (form!.validate()) {
                    String text = textEdit.text;
                    save!(text);
                  }
                },
              ),
            )
          ],
        ));
  }
}
