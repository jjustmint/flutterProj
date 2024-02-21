import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String name;
  final String id;
  final String email;
  const NextPage({
    super.key,
    required this.name,
    required this.id,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to another page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'All information',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0),
              ),
              const SizedBox(height: 14.0),
              Text('Name: $name'),
              Text('ID: $id'),
              Text('Email: $email'),
              const SizedBox(height: 14.0),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text('Back'))
            ],
          ),
        ));
  }
}
