import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/text_navigate.dart';

class Review extends StatefulWidget {
  Review({Key? key}) : super(key: key);

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  int counter = 0;
  String password = '12345';
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3C Review'),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        elevation: MaterialStateProperty.all(20)),
                    onPressed: () {},
                    child: Text('TextButton'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    onPressed: () {},
                    child: Text('OutlinedButton'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.access_alarm,
                            size: 20,
                          ),
                          Text('   ElevatedButton'),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  //Inkwell
                  //GestureDetector
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      counter++;
                                      setState(() {});
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.deepPurple,
                                      radius: 20,
                                      child: Icon(Icons.add),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.deepPurple,
                                    onPressed: () {
                                      if (counter > 0) {
                                        counter--;
                                      }
                                      setState(() {});
                                    },
                                    mini: true,
                                    child: Icon(Icons.remove),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '${counter}',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Counter Design'),
                      ),
                    ],
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
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      // if (formKey.currentState!.validate()) {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => TestNavigate(),
                      //     ),
                      //   );
                      // }
                    },
                    child: Text(
                      'LOGIN',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
