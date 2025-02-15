import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gymnote/auth_bloc/auth_bloc.dart';
import 'package:gymnote/auth_bloc/auth_event.dart';
import 'package:gymnote/block/theme_bloc.dart';
import 'package:gymnote/block/theme_state.dart';
import 'package:gymnote/firebase_options.dart';
import 'package:gymnote/screens/auth_wrapper.dart';
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
    return BlocProvider(
      create: (context) => AuthBloc()..add(AuthCheckStatus()), // Проверяем статус авторизации
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(), // Используем AuthWrapper
      ),
    );
  }
}

