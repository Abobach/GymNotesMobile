import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gymnote/auth_bloc/auth_bloc.dart';
import 'package:gymnote/auth_bloc/auth_state.dart';
import 'package:gymnote/screens/auth_screen.dart';
import 'package:gymnote/screens/home_screen.dart';

class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is Authenticated) {
          return AuthScreen(); // Если авторизован, показываем домашний экран
        } else {
          return AuthScreen(); // Если не авторизован, показываем экран авторизации
        }
      },);
  }
}
