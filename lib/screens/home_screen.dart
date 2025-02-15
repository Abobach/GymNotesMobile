import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gymnote/module/src/firebaseAuth.dart';


class HomeScreen extends StatelessWidget {
 
   HomeScreen();

    

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        
        title: const Text('Главный экран'),
      ),
      body: const Center(
        child: Text("Привет,!", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
