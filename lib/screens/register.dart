import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sdp_cw1_mobile_uis/screens/login.dart';

class RegisterForm extends StatefulWidget {
  static const routeName = '/signup';

  const RegisterForm({
    Key? key,
  }) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                color: Colors.blue[100],
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.6,
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
                          color: Colors.orange[400],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/svg/drawkit5.svg',
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
              // LoginCarouselSliderSignUp(),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(label: Text("Name")),
                      controller: nameController,
                      validator: emailValidator,
                    ),
                    TextFormField(
                      decoration: InputDecoration(label: Text("Email")),
                      controller: emailController,
                      validator: emailValidator,
                    ),
                    TextFormField(
                      decoration: InputDecoration(label: Text("Password")),
                      controller: passwordController,
                      validator: requiredValidator,
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        // Provider.of<AuthService>(context, listen: false).loginForm();
                        Navigator.of(context).pushNamed(LoginPage.routeName);
                      },
                      child: const Text('Already have account?'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Sign Up'),
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

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? requiredValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Input field cannot be empty';
    }
    return null;
  }
}
