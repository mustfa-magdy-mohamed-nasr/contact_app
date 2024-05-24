import 'dart:io';

import 'package:contact_app/cubits/member_cubit/member_cubit.dart';
import 'package:contact_app/model/contact_model.dart';
import 'package:contact_app/views/details_view/detalis_view.dart';
import 'package:contact_app/views/edit_view/edit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    super.key,
    required this.data,
  });
  final ContactModel data;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              data.delete();
              BlocProvider.of<MemberCubit>(context).fetchAllMember();
            },
            backgroundColor: Colors.red,
            icon: Icons.delete,
            label: 'Delete',
          ),
          SlidableAction(
            onPressed: (context) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EditView(
                            member: data,
                          )));
            },
            backgroundColor: const Color.fromARGB(255, 2, 71, 105),
            icon: Icons.edit_note_outlined,
            label: 'Edit',
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetalisView(
                        member: data,
                      )));
        },
        child: Card(
          child: ListTile(
            leading: Container(
              width: 100, // Adjust the width as needed
              height: 100, // Adjust the height as needed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image:
                    data.imagePath != null && File(data.imagePath!).existsSync()
                        ? DecorationImage(
                            image: FileImage(File(data.imagePath!)),
                            fit: BoxFit.cover,
                          )
                        : null,
                color: data.imagePath == null ||
                        !File(data.imagePath!).existsSync()
                    ? Colors.grey
                    : null,
              ),
            ),
            title: Text(
              data.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              data.fanction,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
