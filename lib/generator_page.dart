// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_openmemes/meme_page.dart';

class GeneratorPage extends StatelessWidget {
  const GeneratorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bggenpage.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 10),
                    child: Text(
                      'Describe el meme que quieres generar:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontFamily: 'LexendDeca',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      expands: true,
                      textAlignVertical: TextAlignVertical.top,
                      maxLength: 200,
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 20,
                        fontFamily: 'LexendDeca',
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Escribe aquí...',
                        hintStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 20,
                          fontFamily: 'LexendDeca',
                          fontWeight: FontWeight.w400,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 60),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MemePage()), );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(240, 60),
                        backgroundColor: const Color(0xFFDEC6C6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Generar',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'LexendDeca',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'images/wojak.png',
              width: 140,
              height: 140,
            ),
          ),
        ],
      ),
    );
  }
}
