import 'package:contact_app/cubits/member_cubit/member_cubit.dart';
import 'package:contact_app/views/add_contact/add_member_view.dart';
import 'package:contact_app/views/contact_view/widgets/contant_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddMemberView()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 241, 239, 239),
      body: const ContantViewBody(),
    );
  }
}
