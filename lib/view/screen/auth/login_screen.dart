import 'package:flutter/material.dart';

import '../../widget/metarial_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final globalkey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool pressIcon = true;

  String? _validateEmail(value) {
    if (value!.isEmpty) {
      return 'Please enter an Email';
    }
    RegExp emailReg = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailReg.hasMatch(value)) {
      return 'Please enter an valid email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 500,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter your email and password',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                key: globalkey,
                child: Column(
                  children: [
                    TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.mail,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.blueAccent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.blueAccent)),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: 'Input Email',
                          label: const Text(
                            'Email',
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                          labelStyle: const TextStyle(
                              fontSize: 45, fontWeight: FontWeight.bold),
                        ),
                        validator: _validateEmail),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: pressIcon,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                pressIcon = !pressIcon;
                              });
                            },
                            child: Icon(pressIcon
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        prefixIcon: Icon(Icons.lock),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                const BorderSide(color: Colors.blueAccent)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                const BorderSide(color: Colors.blueAccent)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'Input Password',
                        label: const Text(
                          'Password',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        labelStyle: const TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold),
                      ),
                      validator: (value) {
                        if (value == null || value!.isEmpty) {
                          return 'Please Enter Password';
                        } else if (value.length < 8) {
                          return 'Please enter minimum 8 character';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Save Password')
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Forget Password?",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              MeterialButton(
                buttonText: 'Log In',
              )
            ],
          ),
        ),
      ),
    );
  }
}
