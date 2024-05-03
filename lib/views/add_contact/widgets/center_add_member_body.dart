import 'package:contact_app/cubits/add_member_cubit/add_member_cubit.dart';
import 'package:contact_app/model/contact_model.dart';
import 'package:contact_app/views/add_contact/widgets/custom_text_field.dart';
import 'package:contact_app/views/add_contact/widgets/end_add_member.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CenterAddMemberBody extends StatefulWidget {
  const CenterAddMemberBody({
    super.key,
  });

  @override
  State<CenterAddMemberBody> createState() => _CenterAddMemberBodyState();
}

class _CenterAddMemberBodyState extends State<CenterAddMemberBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? name, email, fanction, phone;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              name = value;
            },
            icon: Icons.person_3_outlined,
            labelText: 'Name',
          ),
          CustomTextField(
            onSaved: (value) {
              phone = value;
            },
            icon: Icons.phone_enabled_outlined,
            labelText: 'Phone',
          ),
          CustomTextField(
            onSaved: (value) {
              fanction = value;
            },
            icon: Icons.wordpress_outlined,
            labelText: 'Function',
          ),
          CustomTextField(
            onSaved: (value) {
              email = value;
            },
            icon: Icons.email_outlined,
            labelText: 'Email',
          ),
          EndAddMember(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var contactModel = ContactModel(
                    name: name!,
                    phone: phone!,
                    email: email!,
                    fanction: fanction!);
                BlocProvider.of<AddMemberCubit>(context)
                    .addMember(contactModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
