import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:tokobirumerah/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Toko Biru Merah',
        theme: ThemeData(
          useMaterial3: true,
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
        ),
        home: const LoginPage(),
      ),
    );
  }
}
