import 'package:flutter/material.dart';
import 'package:tokobirumerah/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Biru Merah',
      theme: ThemeData(
        colorScheme: ColorScheme(
          primary: Colors.yellow,               // Primary color
          secondary: Colors.yellowAccent,       // Secondary color (adjust as needed)
          surface: Colors.white,                // Surface color
          background: Colors.yellow[50]!,       // Background color
          error: Colors.red,                    // Error color
          onPrimary: Colors.black,              // Text color on primary
          onSecondary: Colors.black,            // Text color on secondary
          onSurface: Colors.black,              // Text color on surface
          onBackground: Colors.black,           // Text color on background
          onError: Colors.white,                // Text color on error
          brightness: Brightness.light,         // Brightness mode
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),                // Make sure to use const here
    );
  }
}
