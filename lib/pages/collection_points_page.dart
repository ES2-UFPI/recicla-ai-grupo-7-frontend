import 'package:flutter/material.dart';
import 'package:recicla_ai_grupo_7_frontend/widgets/app_app_bar.dart';
import 'package:recicla_ai_grupo_7_frontend/widgets/app_drawer.dart';

class CollectionPoints extends StatefulWidget {
  const CollectionPoints({super.key});

  @override
  State<CollectionPoints> createState() => _CollectionPointsState();
}

class _CollectionPointsState extends State<CollectionPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: "Pontos de Coleta"),
      drawer: AppDrawer(),
      body: Center(child: Text("Collection Points")),
    );
  }
}