import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_textField.dart';
import '../widgets/nuo_shadwo.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  static String id = 'RegisterPage';
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              //this is image for login
              CustomShadow(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: const Image(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/login1.jpeg'),
                    width: double.infinity,
                    height: 200,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Chat App',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Register",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomShadow(
                child: CustomTextField(
                  onTap: () {},
                  hint: 'Email',
                  onChanged: (data) {
                    email = data;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomShadow(
                //create a string
                //list of string                
                child: CustomTextField(
                  onTap: () {},
                  hint: 'Password',
                  onChanged: (data) {
                    password = data;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  onTap: () async {

                    try{
                    //this instance for auth
                    var auth = FirebaseAuth.instance;
                    
                    //this for credential from user
                    UserCredential user =
                        await auth.createUserWithEmailAndPassword(
                            email: email!, password: password!);
                    print(user.user!.email);}on FirebaseAuthException catch(e){
                      print(e.message);
                    }
                  },
                  text: 'Register'),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account ?",
                    ),
                    GestureDetector(
                      child: const Text(
                        "  Sing In",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
