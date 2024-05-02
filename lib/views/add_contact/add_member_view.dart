import 'package:contact_app/cubits/add_member_cubit/add_member_cubit.dart';
import 'package:contact_app/views/add_contact/widgets/add_contact_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddMemberView extends StatelessWidget {
  const AddMemberView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddMemberCubit(),
      child: const Scaffold(
        body: AddContactBody(),
      ),
    );
  }
}
