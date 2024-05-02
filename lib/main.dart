import 'package:contact_app/cubits/add_member_cubit/add_member_cubit.dart';
import 'package:contact_app/model/contact_model.dart';
import 'package:contact_app/simple_bloc_observer.dart';
import 'package:contact_app/views/add_contact/add_member_view.dart';
import 'package:contact_app/views/contact_view/contactView.dart';
import 'package:contact_app/views/dwtails_view/detalis_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  Bloc.observer = SimpleObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(ContactModelAdapter());

  await Hive.openBox<ContactModel>('contact');
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
        '/page1': (context) => const AddMemberView(),
        '/page2': (context) => const DetalisView(),
        // '/page2': (context) => Page2(),
      },
    );
  }
}
