import 'package:flutter/material.dart';

class MyLogSign extends StatefulWidget {
  const MyLogSign({super.key});

  @override
  State<MyLogSign> createState() => _MyLogSignState();
}

class _MyLogSignState extends State<MyLogSign> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.blue,
      ),
      body:  Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email', 
                border: OutlineInputBorder(),),
              keyboardType: TextInputType.emailAddress,
              
            )
          ],
        ),
      ),
    );
  }
}