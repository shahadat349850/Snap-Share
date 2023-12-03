import 'package:flutter/material.dart';

import '../../widget/metarial_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final globalkey = GlobalKey<FormState>();

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController conformPasswordController = TextEditingController();

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign-Up for joining us',
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
                        controller: firstNameController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.person,
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
                          hintText: 'First Name',
                          label: const Text(
                            'First Name',
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                          labelStyle: const TextStyle(
                              fontSize: 45, fontWeight: FontWeight.bold),
                        ),
                        ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: lastNameController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.person,
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
                        hintText: 'Last Name',
                        label: const Text(
                          'Last Name',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        labelStyle: const TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
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
                      controller: phoneController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.phone,
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
                        hintText: 'Phone Number',
                        label: const Text(
                          'Phone Number',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        labelStyle: const TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold),
                      ),
                    ),
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
                        hintText: 'Password',
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
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: conformPasswordController,
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
                        hintText: 'Conform Password',
                        label: const Text(
                          'Conform Password',
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
                height: 15,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.check_box,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('agree with '),
                  Text(
                    'Term and Condition',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              MeterialButton(
                buttonText: 'Sign Up',
              ),

              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already you have account?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  )
                ],

              )
            ],
          ),
        ),
      ),
    );
  }
}
