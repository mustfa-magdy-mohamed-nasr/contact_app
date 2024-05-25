import 'package:contact_app/cubits/member_cubit/member_cubit.dart';
import 'package:contact_app/generated/l10n.dart';
import 'package:contact_app/model/contact_model.dart';
import 'package:contact_app/simple_bloc_observer.dart';
import 'package:contact_app/views/contact_view/contactView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = SimpleObserver();
  Hive.registerAdapter(ContactModelAdapter());

  await Hive.openBox<ContactModel>('contact');
  runApp(const ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MemberCubit()..fetchAllMember(),
      child: const MaterialApp(
        locale: Locale('ar'),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: ContactView(),
      ),
    );
  }
}
