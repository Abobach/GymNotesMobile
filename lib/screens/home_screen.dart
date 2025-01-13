import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        
        title: const Text('Главный экран'),
      ),
      body: const Center(
        child: Text(
               'GYMNOTE',
                style: TextStyle(
                fontFamily: 'Astronomus',
                fontSize: 20,
                fontWeight: FontWeight.bold,
             ),
          ),
      ),
    );
  }
}
