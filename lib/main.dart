import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gymnote/firebase_options.dart';
import 'package:gymnote/screens/splash_screen.dart';


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
      debugShowMaterialGrid: false,
      
      debugShowCheckedModeBanner: false,
      title: 'GymNote',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 255, 255)),
      
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => const SplashScreen(),
       
      },
    );
  }
}

