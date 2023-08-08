import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lofelt_sdk/lofelt.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final lofelt = Lofelt();

  @override
  void initState() {
    super.initState();

    _init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              lofelt.play();
            },
            child: Text('Play'),
          ),
        ),
      ),
    );
  }

  void _init() async {
    await lofelt.initHaptics();

    final pattern =
        await rootBundle.loadString('assets/haptics/MovieProjector1.haptic');

    await lofelt.load(pattern);
  }
}
