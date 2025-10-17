
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recicla_ai_grupo_7_frontend/blocs/settings_bloc.dart';
import 'package:recicla_ai_grupo_7_frontend/pages/app_page.dart';
import 'package:recicla_ai_grupo_7_frontend/pages/collection_points_page.dart';
import 'package:recicla_ai_grupo_7_frontend/pages/education_page.dart';
import 'package:recicla_ai_grupo_7_frontend/pages/history_page.dart';
import 'package:recicla_ai_grupo_7_frontend/pages/home_page.dart';
import 'package:recicla_ai_grupo_7_frontend/pages/notifications_page.dart';
import 'package:recicla_ai_grupo_7_frontend/pages/reward_page.dart';
import 'package:recicla_ai_grupo_7_frontend/pages/schedule_page.dart';
import 'package:recicla_ai_grupo_7_frontend/pages/settings_page.dart';
import 'package:recicla_ai_grupo_7_frontend/utils/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingsCubit(),
      child: BlocBuilder<SettingsCubit, Settings>(
        builder: (context, settings) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'App',
          theme: AppTheme.lightTheme(context),
          darkTheme: AppTheme.darkTheme(context),
          themeMode: settings.themeMode,
          routes: {
            '/': (_) => const AppPage(),
            '/home': (_) => const HomePage(),
            '/settings': (_) => const SettingsPage(),

            '/schedule': (_) => const SchedulePage(),
            '/notifications': (_) => const NotificationsPage(),
            '/education': (_) => const EducationPage(),
            '/points': (_) => const CollectionPoints(),
            '/reward': (_) => const RewardPage(),
            '/history': (_) => const HistoryPage(),

          },
          initialRoute: '/',
        ),
      ),
    );
  }
}