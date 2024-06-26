import 'package:contact_app/cubits/member_cubit/member_cubit.dart';
import 'package:contact_app/model/contact_model.dart';
import 'package:contact_app/views/add_contact/widgets/add_image.dart';
import 'package:contact_app/views/contact_view/widgets/contact_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ContantListView extends StatelessWidget {
  const ContantListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MemberCubit, MemberState>(
      builder: (context, state) {
        List<ContactModel> member =
            BlocProvider.of<MemberCubit>(context).member ?? [];
        return ListView.builder(
          itemCount: member.length,
          itemBuilder: (BuildContext context, int index) {
            return ContactItem(
              data: member[index],
            );
          },
        );
      },
    );
  }
}
