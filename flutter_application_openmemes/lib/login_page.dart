import 'package:flutter/material.dart';
import 'package:flutter_application_openmemes/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bglogin.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            const Text(
              "Iniciar Sesión",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'LexendDeca',
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LexendDeca',
                ),
                decoration: const InputDecoration(
                  hintText: "Ingresa tu Usuario",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LexendDeca',
                ),
                decoration: const InputDecoration(
                  hintText: "Ingresa tu Contraseña",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 230,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ElevatedButton(
                onPressed: () {
                  //Ir a main_page.dart
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                  );
                },
                
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                  backgroundColor: Colors.blue,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text(
                  "Entrar",
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LexendDeca',
                ),
                  ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
