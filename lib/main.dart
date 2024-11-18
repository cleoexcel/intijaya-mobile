import 'package:flutter/material.dart';
import 'package:intijayamobile/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:intijayamobile/screens/login.dart';

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
      title: 'Inti Jaya Mobile',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
        ).copyWith(secondary: Colors.red[900]),
      ),
      home: const LoginPage(),
    ),
    );
  }
}