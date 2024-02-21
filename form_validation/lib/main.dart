import 'package:flutter/material.dart';
import 'package:form_validation/anotherpage.dart';
import 'package:form_validation/form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'From Validation Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Welcome to Form Validation Demo')),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Myform(
                labelText: "Enter your name",
                validator: "Please enter a valid name",
                regex: r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$",
                controller: _nameController),
            Myform(
                labelText: "Enter your student ID",
                validator: "Please enter a valid student ID",
                regex: r'^\d{11}$',
                controller: _idController),
            Myform(
                labelText: "Enter your email address",
                validator: "Please enter a valid email address",
                regex:
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                controller: _emailController),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')));
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return NextPage(
                          name: _nameController.text,
                          id: _idController.text,
                          email: _emailController.text);
                    }));
                  }
                },
                child: const Text('Submit'))
          ],
        ));
  }
}
