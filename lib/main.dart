import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flash/screens/welcome_screen.dart';
import 'package:flash/screens/login_screen.dart';
import 'package:flash/screens/registration_screen.dart';
import 'package:flash/screens/chat_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

// final navigatorKey = GlobalKey<NavigatorState>();

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
