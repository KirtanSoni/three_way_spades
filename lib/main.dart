import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage()); 
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isJoinGameButtonPressed = false;
  @override  
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               const Image(
                image: AssetImage('3_of_spades.png'), 
                width: 200,
                height: 200,
              ), 
              const SizedBox(height: 20),
      
              // Create Game Button
              
              ElevatedButton(
                onPressed: () {
                  print('Create Game Button Pressed');
                },
                child: const Text('Create Game'),
              ),
              const SizedBox(height: 10),

              if(_isJoinGameButtonPressed)const SizedBox(height: 100, width: 250,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Access Code',
                ),
              ),),
              // Join Game Button
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Handle join game action (navigation, logic, etc.)
                  setState(() {
                    _isJoinGameButtonPressed = true;
                  });
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
