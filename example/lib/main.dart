import 'package:color_from_hex/color_from_hex.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                getColorFromHex('#FFFFFF').toString(),
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              Text(getColorFromHex('#FFFFFF').toHex().toString(),
                  style: const TextStyle(fontSize: 20))
            ],
          ),
        ),
      ),
    );
  }
}
