import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'customer/screens/main_screen.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                color: Colors.blue[900],
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pick & Go',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          fontSize: 38,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/svg/drawkit1.svg',
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * 0.6,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(label: Text("Email")),
                      controller: emailController,
                      validator: requiredValidator,
                    ),
                    TextFormField(
                      decoration: InputDecoration(label: Text("Password")),
                      controller: passwordController,
                      validator: requiredValidator,
                      obscureText: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(RegisterForm.routeName);
                            },
                            child: const Text('Create account'),
                            style: OutlinedButton.styleFrom(
                              shape: StadiumBorder(),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(CustomerMainScreen.routeName);
                              // if (_formKey.currentState!.validate()) {
                              //   widget.signInWithEmailAndPassword(
                              //       emailController.text, passwordController.text);
                              // }
                            },
                            child: const Text('Login'),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(12), // <-- Radius
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                // Navigator.of(context)
                                // .pushNamed(ResetPasswordFormScreen.routeName);

                                // ;
                              },
                              child: Text('Reset Password'))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? requiredValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Input field cannot be empty';
    }
    return null;
  }
}
