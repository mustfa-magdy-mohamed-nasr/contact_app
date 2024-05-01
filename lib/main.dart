import 'package:contact_app/views/contactView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // theme: ThemeData.dark(),
        title: 'Contact App',
        home: ContactView());
  }
}
