import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Hello, World!',
              style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 18.0,
            ),
            const Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 18.0,
            ),
            const Image(
              image: NetworkImage(
                  'https://storage.googleapis.com/cms-storage-bucket/c823e53b3a1a7b0d36a9.png',
                  scale: 3.0),
            ),
            const SizedBox(
              height: 18.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Button Pressed!'),
                  ),
                );
              },
              child: const Text(
                'Click Me',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
