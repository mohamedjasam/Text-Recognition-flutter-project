import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String text;

  const ResultScreen({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Result',
         style:TextStyle(
          color: Colors.white
         ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.brown, // Change app bar color to brown
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0), // Add padding to the outer Container
        color: const Color.fromARGB(255, 255, 238, 89), // Set the background color to cream
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(30.0), // Add padding inside the image container
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/note.jpg'),
                fit: BoxFit.contain, // Change the fit type to control the image size
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
