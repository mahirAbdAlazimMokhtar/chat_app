import 'package:chat_app/pages/register_login.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_textField.dart';
import 'package:chat_app/widgets/nuo_shadwo.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
static String id = 'LoginPage';
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
                height: 40,
              ),
              //this is image for login
              CustomShadow(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: const Image(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/hello.jpeg'),
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
                "Login In",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomShadow(
                child: CustomTextField(onTap: () {}, hint: 'Email'),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomShadow(
                child: CustomTextField(
                  onTap: () {},
                  hint: 'Password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(onTap: () {}, text: 'Sing In'),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "don't have an account ?",
                    ),
                    GestureDetector(
                      child: const Text(
                        "  Sing Up",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                       Navigator.pushNamed(context, RegisterPage.id);
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
