import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final String password = '123456';
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'It should not be empty';
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Email Address...',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'It should not be empty';
                    }
                    if (value != password) {
                      return 'Invalid value';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password...',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        showSnackBarAsBottomSheet(
                            context, 'Login Successfully');
                      }
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static void showSnackBarAsBottomSheet(BuildContext context, String message) {
    showModalBottomSheet<void>(
      isDismissible: false,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      context: context,
      barrierColor: const Color.fromRGBO(0, 0, 0, 0),
      builder: (BuildContext context) {
        return Container(
          height: 50,
          alignment: AlignmentDirectional.center,
          color: Colors.grey.shade800,
          padding: const EdgeInsets.all(12),
          child: Wrap(
            children: [
              Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }
}
