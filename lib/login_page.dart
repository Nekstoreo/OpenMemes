import 'package:flutter/material.dart';
import 'package:flutter_application_openmemes/main_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logging/logging.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

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
                controller: emailController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
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
                controller: passwordController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
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
                  String email = emailController.text;
                  String password = passwordController.text;

                  // Luego, puedes realizar la consulta en la base de datos Firestore
                  // utilizando la función que se proporcionó anteriormente.
                  checkUserCredentials(email, password, context);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
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

final Logger logger = Logger('Login Page');

Future<void> checkUserCredentials(
    String userEmail, String password, BuildContext context) async {
  try {
    // Iniciar sesión con el correo y contraseña proporcionados
    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: userEmail,
      password: password,
    );

    // Verificar si el inicio de sesión fue exitoso
    if (userCredential.user != null) {
      // El inicio de sesión fue exitoso
      logger.info("Inicio de sesión exitoso.");

      // Navega a la página MainPage
      navigateToMainPage(context);
    } else {
      // El inicio de sesión no fue exitoso
      logger.info("Inicio de sesión fallido.");
    }
  } catch (e) {
    logger.severe(e.toString());
  }
}

void navigateToMainPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const MainPage()),
  );
}
