import 'package:flutter/material.dart';
import 'package:kelas_flutter/component/validator.dart';
import 'package:kelas_flutter/model/auth.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  GlobalKey<FormState> formKeySignin = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffKey = GlobalKey<ScaffoldState>();
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  AuthModel signCredential = AuthModel();
  Validator validate = Validator();

  handleSubmit() {
    print(userName.text);
    print(password.text);
    // print(userName.text);
    // print(password.text);
  }

  @override
  Widget build(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text('Silahkan Periksa'),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
    return Scaffold(
      key: scaffKey,
      body: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKeySignin,
          child: ListView(
            children: [
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: userName,
                validator: validate.validateUsername,
                keyboardType: TextInputType.text,
                // onSaved: (val) {
                //   if (val!.isNotEmpty) {
                //     signCredential.username = val;
                //   }
                // },
                decoration: InputDecoration(labelText: 'Silahkan isi username'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: password,
                validator: validate.password,
                obscureText: true,
                keyboardType: TextInputType.text,
                // onSaved: (val) {
                //   if (val!.isNotEmpty) {
                //     signCredential.password = val;
                //   }
                // },
                decoration: InputDecoration(
                  labelText: 'Silahkan isi password',
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    var form = formKeySignin.currentState;
                    if (form!.validate()) {
                      /// form.save();
                      handleSubmit();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Text('Log In'))
            ],
          )),
    );
  }
}
