import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class LoginScreen extends StatefulWidget {
 const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  //dispose() es un método que se usa para limpiar recursos cuando una pantalla deja de existir
  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  /**build() es el método que Flutter usa para dibujar la pantalla.
  Y puede ejecutarse muchas veces.
  Entonces, si vos creás el controller adentro de build(), cada vez que la pantalla se redibuja, se crea uno nuevo.
 */
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                hintText: 'Enter your username',
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Enter your password',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                  final username = _usernameController.text.trim();

                  _usernameController.clear();
                  _passwordController.clear();

                  //extra se usa para pasar info
                context.push('/home', extra: username);
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
