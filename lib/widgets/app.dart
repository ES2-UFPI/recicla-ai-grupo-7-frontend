
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recicla_ai_grupo_7_frontend/blocs/app_theme_bloc.dart';
import 'package:recicla_ai_grupo_7_frontend/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, theme) => MaterialApp(
          title: 'App',
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: theme,
          routes: {
            '/': (_) => const HomePage(),
          },
          initialRoute: '/',
        ),
      ),
    );
  }
}