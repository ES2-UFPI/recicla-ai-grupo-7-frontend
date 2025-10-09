import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recicla_ai_grupo_7_frontend/blocs/app_theme_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Center(child: Text("oi")),
          BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, theme) => Switch(
              value: theme == ThemeMode.dark, 
              onChanged: (value) => setState(() => context.read<ThemeCubit>().setTheme( value ? ThemeMode.dark : ThemeMode.light ) )
            ),
          )
        ],
      ),
    );
  }
}
