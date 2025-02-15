import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gymnote/block/theme_bloc.dart';
import 'package:gymnote/block/theme_event.dart';


class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeBloc = BlocProvider.of<ThemeBloc>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Bloc Theme Switch")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => themeBloc.add(ToggleTheme()),
          child: const Text("Переключить тему"),
        ),
      ),
    );
  }
}
