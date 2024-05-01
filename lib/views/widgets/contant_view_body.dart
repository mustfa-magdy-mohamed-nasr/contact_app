import 'package:contact_app/views/widgets/contant_list_view.dart';
import 'package:contact_app/views/widgets/custom_app_par.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContantViewBody extends StatelessWidget {
  const ContantViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppBar(),
          const Expanded(
            child: ContantListView(),
          ),
        ],
      ),
    );
  }
}
