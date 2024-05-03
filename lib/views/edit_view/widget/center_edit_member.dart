import 'package:contact_app/cubits/add_member_cubit/add_member_cubit.dart';
import 'package:contact_app/cubits/member_cubit/member_cubit.dart';
import 'package:contact_app/model/contact_model.dart';
import 'package:contact_app/views/add_contact/widgets/custom_text_field.dart';
import 'package:contact_app/views/add_contact/widgets/end_add_member.dart';
import 'package:contact_app/views/contact_view/contactView.dart';
import 'package:contact_app/views/edit_view/widget/custom_text_fild_edit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CenterEditMemberBody extends StatefulWidget {
  const CenterEditMemberBody({
    super.key,
    required this.member,
  });
  final ContactModel member;

  @override
  State<CenterEditMemberBody> createState() => _CenterAddMemberBodyState();
}

class _CenterAddMemberBodyState extends State<CenterEditMemberBody> {
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
          CustomTextFieldEditView(
            onChanged: (value) {
              name = value;
            },
            // icon: Icons.person_3_outlined,
            labelText: widget.member.name,
          ),
          CustomTextFieldEditView(
            onChanged: (value) {
              phone = value;
            },
            // icon: Icons.phone_enabled_outlined,
            labelText: widget.member.phone,
          ),
          CustomTextFieldEditView(
            onChanged: (value) {
              fanction = value;
            },
            // icon: Icons.wordpress_outlined,
            labelText: widget.member.fanction,
          ),
          CustomTextFieldEditView(
            onChanged: (value) {
              email = value;
            },
            // icon: Icons.email_outlined,
            labelText: widget.member.email,
          ),
          EndAddMember(
            onTap: () {
              widget.member.name = name ?? widget.member.name;
              widget.member.phone = phone ?? widget.member.phone;
              widget.member.fanction = fanction ?? widget.member.fanction;
              widget.member.email = email ?? widget.member.email;
              widget.member.save();
              BlocProvider.of<MemberCubit>(context).fetchAllMember();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ContactView()));
            },
          )
        ],
      ),
    );
  }
}
