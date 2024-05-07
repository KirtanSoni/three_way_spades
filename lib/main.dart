import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage()); 
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display the image
              /* const Image(
                //image: AssetImage('assets/image.png'), // Replace with your image path
                width: 200,
                height: 200,
              ), */
              const SizedBox(height: 20),
      
              // Create Game Button
              ElevatedButton(
                onPressed: () {
                  // Handle create game action (navigation, logic, etc.)
                  print('Create Game Button Pressed');
                },
                child: const Text('Create Game'),
              ),
              const SizedBox(height: 10),
      
              // Join Game Button
              ElevatedButton(
                onPressed: () {
                  // Handle join game action (navigation, logic, etc.)
                  print('Join Game Button Pressed');
                },
                child: const Text('Join Game'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
