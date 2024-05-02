import 'package:contact_app/cubits/add_member_cubit/add_member_cubit.dart';
import 'package:contact_app/views/add_contact/widgets/center_add_member_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CenterAddMember extends StatelessWidget {
  const CenterAddMember({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddMemberCubit, AddMemberState>(
      listener: (context, state) {
        if (state is AddMemberFailuer) {
          print("falier${state.errMessadge}");
        }
        if (state is AddMemberSuccess) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is AddMemberLoading ? true : false,
            child: const CenterAddMemberBody());
      },
    );
  }
}
