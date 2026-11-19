import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/container_config_provider.dart';
import 'widgets/sliders_section.dart';
import 'widgets/red_container_preview.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ContainerConfigProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final monochromeScheme = ColorScheme.fromSeed(
      seedColor: Colors.black,
      brightness: Brightness.light,
    ).copyWith(
      primary: Colors.black,
      onPrimary: Colors.white,
      inversePrimary: Colors.grey.shade300,
    );

    return MaterialApp(
      title: 'Lab 12 - Provider Configurator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: monochromeScheme,
        useMaterial3: true,
      ),
      home: const ConfiguratorScreen(),
    );
  }
}

class ConfiguratorScreen extends StatelessWidget {
  const ConfiguratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: const Text('Container Configurator'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SlidersSection(),
            SizedBox(height: 32),
            Expanded(
              child: RedContainerPreview(),
            ),
          ],
        ),
      ),
    );
  }
}