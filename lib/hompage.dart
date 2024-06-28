// lib/homepage.dart
import 'package:flutter/material.dart';
import 'package:login_firebase/controllers/auth_controller.dart';
import 'package:login_firebase/dialogs.dart';

class HomePage extends StatelessWidget {
  static const String route = '/home';
  static const String path = "/home";
  static const String name = "Home Screen";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            height: 52,
            child: ElevatedButton(
              onPressed: () {
                WaitingDialog.show(context, future: AuthController.I.logout());
              },
              child: const Text("Sign out"),
            ),
          ),
        ),
        body: const SafeArea(child: Center(child: Text("Home"))));
  }
}
