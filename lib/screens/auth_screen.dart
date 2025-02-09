import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gymnote/module/src/firebaseAuth.dart';
import 'package:gymnote/screens/home_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  //final GoogleAuthService _googleAuthService = GoogleAuthService();
  final FirebaseAuthService _firebaseAuthService = FirebaseAuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String welcomeText = "Welcome!";
  User? currentUser;

  @override
  void initState() {
    super.initState();
    _checkCurrentUser();
  }

  // Проверка текущего пользователя
  void _checkCurrentUser() {
    final user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // Пользователь уже вошел
      setState(() {
        currentUser = user;
        welcomeText = "Welcome, ${user.email ?? 'User'}!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'lib/assets/image/splash.jpg',
          fit: BoxFit.cover,
        ),
        Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/image/Group 2.png',
                height: 120,
              ),
              Text(
                welcomeText,
                style: const TextStyle(
                    fontFamily: 'Astronomus',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(102, 200, 77, 1)),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    focusColor: Color.fromRGBO(102, 200, 77, 1)),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Пароль',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  final email = _emailController.text;
                  final password = _passwordController.text;
                  final user = await _firebaseAuthService
                      .registerWithEmailAndPassword(email, password);
                  if (user != null) {
                    Navigator.push(
                      // ignore: use_build_context_synchronously
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreen(user.email)),
                    );
                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: const Color.fromRGBO(102, 200, 77, 1),
                        content: Text('Успешно: ${user.email}'),
                        action: SnackBarAction(
                          label: 'Action',
                          onPressed: () {
                            // Code to execute.
                          },
                        ),
                      ),
                    );
                  } else {
                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Ошибка'),
                        action: SnackBarAction(
                          label: 'Action',
                          onPressed: () {
                            // Code to execute.
                          },
                        ),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color.fromRGBO(102, 200, 77, 1),
                  minimumSize: const Size(50, 50),
                ),
                child: const Text('Зарегистрироваться'),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      ],
   
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
