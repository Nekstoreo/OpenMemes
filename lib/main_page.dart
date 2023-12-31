// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_openmemes/generator_page.dart';


// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bgmainpage.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            const Text(
              'OpenMemes®',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontFamily: 'LexendDeca',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
              textAlign: TextAlign.left,
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text(
                '¡Presentamos el generador de memes definitivo impulsado por OpenAI Enhancement y el repositorio Memegen GitHub!                    ¿Estás listo para llevar tu juego de memes al siguiente nivel? No busque más, nuestro generador de memes de vanguardia, que combina las increíbles capacidades de los algoritmos avanzados de OpenAI con la vasta y diversa biblioteca de memes del repositorio Memegen GitHub.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'LexendDeca',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GeneratorPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(284, 60),
                    backgroundColor: const Color(0xFFDEC6C6)),
                label: Text(
                  'Comienza a crear tus Memes!!!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'LexendDeca',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                icon: Icon(
                  color: Colors.black,
                  Icons.arrow_right_alt,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
