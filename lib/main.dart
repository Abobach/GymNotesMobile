import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gymnote/firebase_options.dart';
import 'package:gymnote/module/src/firebaseAuth.dart';
import 'package:gymnote/screens/home_screen.dart';
import 'package:gymnote/screens/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'GymNote',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => AuthScreen(),
        '/home' : (context) => const HomeScreen()
      },
    );
  }
}

