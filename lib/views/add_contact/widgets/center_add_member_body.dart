import 'package:contact_app/cubits/add_member_cubit/add_member_cubit.dart';
import 'package:contact_app/cubits/member_cubit/member_cubit.dart';
import 'package:contact_app/model/contact_model.dart';
import 'package:contact_app/views/add_contact/widgets/custom_text_field.dart';
import 'package:contact_app/views/add_contact/widgets/end_add_member.dart';
import 'package:contact_app/views/add_contact/widgets/add_image.dart';
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
  String? name, email, fanction, phone, _imagePath;

  void onImageSelected(String imagePath) {
    setState(() {
      _imagePath = imagePath;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          AddImage(
            onImageSelected: (String imagePath) {
              setState(() {
                _imagePath = imagePath;
              });
            },
          ),
          CustomTextField(
            onSaved: (value) {
              name = value;
            },
            icon: Icons.person_3_outlined,
            labelText: 'اسم الفُسْفُوس',
          ),
          CustomTextField(
            isNumeric: true,
            onSaved: (value) {
              phone = value;
            },
            icon: Icons.phone_enabled_outlined,
            labelText: 'التليفون',
          ),
          CustomTextField(
            onSaved: (value) {
              fanction = value;
            },
            icon: Icons.workspace_premium_outlined,
            labelText: 'وظيفة  الفُسْفُوس',
          ),
          CustomTextField(
            onSaved: (value) {
              email = value;
            },
            icon: Icons.email_outlined,
            labelText: 'الاميل',
          ),
          // AddImage(onImageSelected: onImageSelected), // إضافة AddImage هنا
          EndAddMember(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var contactModel = ContactModel(
                  name: name!,
                  phone: phone!,
                  email: email!,
                  fanction: fanction!,
                );
                BlocProvider.of<AddMemberCubit>(context).addMember(
                  member: contactModel, // تمرير الشخص الجديد كمعامل 'member'
                  imagePath: _imagePath, // تمرير مسار الصورة
                );
                BlocProvider.of<MemberCubit>(context).fetchAllMember();

                Navigator.pop(context);
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
