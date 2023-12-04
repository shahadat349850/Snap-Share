import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../widget/metarial_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = true;
  final _logInFormKey = GlobalKey<FormState>();

  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _logInFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Enter your email and password",
                      style: Theme.of(context).textTheme.headlineLarge),
                  const SizedBox(
                    height: 60,
                  ),
                   Text("Email",
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 16,),
                  TextFormField(
                      controller: emailAddressController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: "Input Email",
                        prefixIcon: Icon(Iconsax.sms)
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required field is empty';
                        }
                        if (!GetUtils.isEmail(value)) {
                          return 'Please enter valid email';
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 16,
                  ),
                  Text("Password",
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 16,),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.phone,
                    obscureText: _isPasswordVisible,
                    decoration: InputDecoration(
                        hintText: "Input Password",
                        prefixIcon: const Icon(Iconsax.lock_1),
                        suffixIcon: IconButton(
                          onPressed: () {
                            if (mounted) {
                              _isPasswordVisible = !_isPasswordVisible;
                              setState(() {});
                            }
                          },
                          icon: _isPasswordVisible
                              ? const Icon(Iconsax.eye_slash)
                              : const Icon(
                                  Iconsax.eye,
                                ),
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Required field is empty';
                      }
                      if (value.length < 8) {
                        return 'The password must be at least 8 characters long';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CheckboxListTile(
                    title: Text("title text"),
                    value: false,
                    tristate: true,
                    onChanged: (value) { },
                    controlAffinity: ListTileControlAffinity.leading,),

                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_logInFormKey.currentState!.validate()) {}
                      },
                      child: const Text("Log In"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      // Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: SizedBox(
      //     height: 500,
      //     width: double.infinity,
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text(
      //           'Enter your email and password',
      //           style: TextStyle(
      //               fontSize: 22,
      //               fontWeight: FontWeight.w700,
      //               color: Colors.black87),
      //         ),
      //         const SizedBox(
      //           height: 30,
      //         ),
      //         Form(
      //           key: globalkey,
      //           child: Column(
      //             children: [
      //               TextFormField(
      //                   controller: emailController,
      //                   keyboardType: TextInputType.emailAddress,
      //                   decoration: InputDecoration(
      //                     prefixIcon: const Icon(
      //                       Icons.mail,
      //                     ),
      //                     enabledBorder: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(5),
      //                         borderSide:
      //                             const BorderSide(color: Colors.blueAccent)),
      //                     focusedBorder: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(5),
      //                         borderSide:
      //                             const BorderSide(color: Colors.blueAccent)),
      //                     floatingLabelBehavior: FloatingLabelBehavior.always,
      //                     hintText: 'Input Email',
      //                     label: const Text(
      //                       'Email',
      //                       style: TextStyle(color: Colors.black, fontSize: 13),
      //                     ),
      //                     labelStyle: const TextStyle(
      //                         fontSize: 45, fontWeight: FontWeight.bold),
      //                   ),
      //                   validator: _validateEmail),
      //               const SizedBox(
      //                 height: 25,
      //               ),
      //               TextFormField(
      //                 controller: passwordController,
      //                 obscureText: pressIcon,
      //                 keyboardType: TextInputType.visiblePassword,
      //                 decoration: InputDecoration(
      //                   suffixIcon: InkWell(
      //                       onTap: () {
      //                         setState(() {
      //                           pressIcon = !pressIcon;
      //                         });
      //                       },
      //                       child: Icon(pressIcon
      //                           ? Icons.visibility
      //                           : Icons.visibility_off)),
      //                   prefixIcon: Icon(Icons.lock),
      //                   enabledBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(5),
      //                       borderSide:
      //                           const BorderSide(color: Colors.blueAccent)),
      //                   focusedBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(5),
      //                       borderSide:
      //                           const BorderSide(color: Colors.blueAccent)),
      //                   floatingLabelBehavior: FloatingLabelBehavior.always,
      //                   hintText: 'Input Password',
      //                   label: const Text(
      //                     'Password',
      //                     style: TextStyle(color: Colors.black, fontSize: 13),
      //                   ),
      //                   labelStyle: const TextStyle(
      //                       fontSize: 45, fontWeight: FontWeight.bold),
      //                 ),
      //                 validator: (value) {
      //                   if (value == null || value!.isEmpty) {
      //                     return 'Please Enter Password';
      //                   } else if (value.length < 8) {
      //                     return 'Please enter minimum 8 character';
      //                   }
      //                   return null;
      //                 },
      //               ),
      //             ],
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 10,
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             const Row(
      //               children: [
      //
      //                 Icon(
      //                   Icons.check_box_outline_blank,
      //                   color: Colors.black,
      //                 ),
      //                 SizedBox(
      //                   width: 8,
      //                 ),
      //                 Text('Save Password')
      //               ],
      //             ),
      //             TextButton(
      //               onPressed: () {},
      //               child: const Text("Forget Password?",
      //                   style: TextStyle(
      //                       color: Colors.black, fontWeight: FontWeight.w500)),
      //             )
      //           ],
      //         ),
      //         const SizedBox(
      //           height: 25,
      //         ),
      //         MeterialButton(
      //           buttonText: 'Log In',
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
