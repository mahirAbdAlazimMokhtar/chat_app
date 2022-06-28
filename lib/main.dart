import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/register_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
        );
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id:(context)=>LoginPage(),
        RegisterPage.id:(context)=>RegisterPage(),

      },
      debugShowCheckedModeBanner: false,

      //replace home by initialRoute
      initialRoute: 'LoginPage',

    );
  }
}
