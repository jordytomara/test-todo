import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_todo/app/modules/login/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller.username,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controller.password,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.authUser,
              child: Text('Login'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: controller.authUser,
              child: Text('Belum punya akun? Registrasi di sini'),
            ),
          ],
        ),
      ),
    );
  }
}
