import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gymnote/auth_bloc/auth_bloc.dart';
import 'package:gymnote/auth_bloc/auth_event.dart';
import 'package:gymnote/auth_bloc/auth_state.dart';
import 'package:gymnote/module/src/firebaseAuth.dart';
import 'package:gymnote/screens/home_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
   final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String welcomeText = "";
  String buttonText = "пппп";
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
        welcomeText = "Welcome!";
        buttonText = "Войти";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Авторизация")),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          if (state is Authenticated) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Вы вошли как: ${state.userEmail}"),
                  ElevatedButton(
                    onPressed: () => context.read<AuthBloc>().add(AuthSignOut()),
                    child: const Text("Выйти"),
                  ),
                ],
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: "Email"),
                ),
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: "Пароль"),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                if (state is AuthLoading) const CircularProgressIndicator(),
                if (state is! AuthLoading)
                  ElevatedButton(
                    onPressed: () {
                      final email = emailController.text.trim();
                      final password = passwordController.text.trim();
                      context.read<AuthBloc>().add(AuthSignIn(email: email, password: password));
                    },
                    child: const Text("Войти"),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}