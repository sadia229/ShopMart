import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopmart/general/utils/config.dart';
import 'package:shopmart/widgets/TextField/password_textField.dart';

import '../../../widgets/TextField/text_textField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }

  bool isLoading = false;
  TextEditingController emilController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final globalKey = GlobalKey<FormState>();

  register()async{
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emilController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          height: context.screenHeight * 0.9,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Form(
            key: globalKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hi! Welcome Back',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Log in to your account',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 71),
                  MaterialTextField(
                    label: 'Email',
                    icon: Icon(
                      Icons.email_outlined,
                      color: Colors.black.withOpacity(0.3),
                    ),
                    controller: emilController,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  PasswordTextField(
                    label: 'Password',
                    controller: passwordController,
                    icon: Icon(
                      Icons.vpn_key_outlined,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {register();},
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
