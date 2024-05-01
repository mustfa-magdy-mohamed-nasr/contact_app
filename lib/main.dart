import 'package:contact_app/views/add_contact/add_contact.dart';
import 'package:contact_app/views/contact_view/contactView.dart';
import 'package:contact_app/views/dwtails_view/detalis_view.dart';
import 'package:contact_app/views/dwtails_view/widgets/details_view_body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      title: 'Contact App',
      initialRoute: '/',
      routes: {
        '/': (context) => const ContactView(),
        '/page1': (context) => AddContact(),
        '/page2': (context) => const DetalisView(),
        // '/page2': (context) => Page2(),
      },
    );
  }
}
