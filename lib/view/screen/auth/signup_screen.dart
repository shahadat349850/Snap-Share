import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:snapshare/utils/colors.dart';
import 'package:snapshare/view/screen/auth/login_screen.dart';

import '../../widget/metarial_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isPasswordVisible = true;
  bool _isConformPasswordVisible = true;
  final _signUpFormKey = GlobalKey<FormState>();

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController conformPasswordController =
      TextEditingController();

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
              key: _signUpFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Get started with us with your details",
                      style: Theme.of(context).textTheme.headlineLarge),
                  const SizedBox(
                    height: 16,
                  ),
                  Text("Email",
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                      controller: emailAddressController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Iconsax.sms),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required field is empty';
                        }
                        if (!GetUtils.isEmail(value)) {
                          return "Please enter valid email";
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 16,
                  ),
                  Text("First Name",
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                      controller: firstNameController,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          hintText: "First Name",
                          prefixIcon: Icon(Iconsax.user)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required field is empty';
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 16,
                  ),
                  Text("Last Name",
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                      controller: lastNameController,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          hintText: "Last Name",
                          prefixIcon: Icon(Iconsax.user)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required field is empty';
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 16,
                  ),
                  Text("Mobile Number",
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                      controller: mobileNumberController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        hintText: "Mobile Number",
                        prefixIcon: Icon(Iconsax.mobile4),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required field is empty';
                        }
                        if (value.length != 11) {
                          return "Mobile Number must be of 11 digit";
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 16,
                  ),
                  Text("Password",
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _isPasswordVisible,
                    decoration: InputDecoration(
                        hintText: "Password",
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
                  Text("Conform Password",
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: conformPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _isConformPasswordVisible,
                    decoration: InputDecoration(
                        hintText: "Conform Password",
                        prefixIcon: const Icon(Iconsax.lock_1),
                        suffixIcon: IconButton(
                          onPressed: () {
                            if (mounted) {
                              _isConformPasswordVisible = !_isConformPasswordVisible;
                              setState(() {});
                            }
                          },
                          icon: _isConformPasswordVisible
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
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_signUpFormKey.currentState!.validate()) {
                          Get.to(()=> const LoginScreen());
                        }
                      },
                      child: const Text("Sign Up"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Have an account?",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, letterSpacing: 0.5),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child:  Text("Log In",
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      // SingleChildScrollView(
      //   child: Padding(
      //     padding: const EdgeInsets.all(16.0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         const Text(
      //           'Sign-Up for joining us',
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
      //                   controller: firstNameController,
      //                   keyboardType: TextInputType.emailAddress,
      //                   decoration: InputDecoration(
      //                     prefixIcon: const Icon(
      //                       Icons.person,
      //                     ),
      //                     enabledBorder: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(5),
      //                         borderSide:
      //                         const BorderSide(color: Colors.blueAccent)),
      //                     focusedBorder: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(5),
      //                         borderSide:
      //                         const BorderSide(color: Colors.blueAccent)),
      //                     floatingLabelBehavior: FloatingLabelBehavior.always,
      //                     hintText: 'First Name',
      //                     label: const Text(
      //                       'First Name',
      //                       style: TextStyle(color: Colors.black, fontSize: 13),
      //                     ),
      //                     labelStyle: const TextStyle(
      //                         fontSize: 45, fontWeight: FontWeight.bold),
      //                   ),
      //                   ),
      //               const SizedBox(
      //                 height: 25,
      //               ),
      //               TextFormField(
      //                 controller: lastNameController,
      //                 keyboardType: TextInputType.emailAddress,
      //                 decoration: InputDecoration(
      //                   prefixIcon: const Icon(
      //                     Icons.person,
      //                   ),
      //                   enabledBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(5),
      //                       borderSide:
      //                       const BorderSide(color: Colors.blueAccent)),
      //                   focusedBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(5),
      //                       borderSide:
      //                       const BorderSide(color: Colors.blueAccent)),
      //                   floatingLabelBehavior: FloatingLabelBehavior.always,
      //                   hintText: 'Last Name',
      //                   label: const Text(
      //                     'Last Name',
      //                     style: TextStyle(color: Colors.black, fontSize: 13),
      //                   ),
      //                   labelStyle: const TextStyle(
      //                       fontSize: 45, fontWeight: FontWeight.bold),
      //                 ),
      //               ),
      //               const SizedBox(
      //                 height: 25,
      //               ),
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
      //                         const BorderSide(color: Colors.blueAccent)),
      //                     focusedBorder: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(5),
      //                         borderSide:
      //                         const BorderSide(color: Colors.blueAccent)),
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
      //                 controller: phoneController,
      //                 keyboardType: TextInputType.emailAddress,
      //                 decoration: InputDecoration(
      //                   prefixIcon: const Icon(
      //                     Icons.phone,
      //                   ),
      //                   enabledBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(5),
      //                       borderSide:
      //                       const BorderSide(color: Colors.blueAccent)),
      //                   focusedBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(5),
      //                       borderSide:
      //                       const BorderSide(color: Colors.blueAccent)),
      //                   floatingLabelBehavior: FloatingLabelBehavior.always,
      //                   hintText: 'Phone Number',
      //                   label: const Text(
      //                     'Phone Number',
      //                     style: TextStyle(color: Colors.black, fontSize: 13),
      //                   ),
      //                   labelStyle: const TextStyle(
      //                       fontSize: 45, fontWeight: FontWeight.bold),
      //                 ),
      //               ),
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
      //                       const BorderSide(color: Colors.blueAccent)),
      //                   focusedBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(5),
      //                       borderSide:
      //                       const BorderSide(color: Colors.blueAccent)),
      //                   floatingLabelBehavior: FloatingLabelBehavior.always,
      //                   hintText: 'Password',
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
      //               const SizedBox(
      //                 height: 25,
      //               ),
      //               TextFormField(
      //                 controller: conformPasswordController,
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
      //                       const BorderSide(color: Colors.blueAccent)),
      //                   focusedBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(5),
      //                       borderSide:
      //                       const BorderSide(color: Colors.blueAccent)),
      //                   floatingLabelBehavior: FloatingLabelBehavior.always,
      //                   hintText: 'Conform Password',
      //                   label: const Text(
      //                     'Conform Password',
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
      //           height: 15,
      //         ),
      //         const Row(
      //           children: [
      //             Icon(
      //               Icons.check_box,
      //               color: Colors.black,
      //             ),
      //             SizedBox(
      //               width: 8,
      //             ),
      //             Text('agree with '),
      //             Text(
      //               'Term and Condition',
      //               style: TextStyle(fontWeight: FontWeight.bold),
      //             ),
      //           ],
      //         ),
      //         const SizedBox(
      //           height: 25,
      //         ),
      //         MeterialButton(
      //           buttonText: 'Sign Up',
      //         ),
      //
      //         const SizedBox(
      //           height: 15,
      //         ),
      //         Row(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             const Text("Already you have account?"),
      //             TextButton(
      //               onPressed: () {},
      //               child: const Text("Login",
      //                   style: TextStyle(
      //                       color: Colors.black,
      //                       fontWeight: FontWeight.w500)),
      //             )
      //           ],
      //
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
