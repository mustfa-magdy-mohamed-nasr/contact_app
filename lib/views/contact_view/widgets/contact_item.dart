import 'dart:io';

import 'package:contact_app/cubits/member_cubit/member_cubit.dart';
import 'package:contact_app/model/contact_model.dart';
import 'package:contact_app/views/details_view/detalis_view.dart';
import 'package:contact_app/views/edit_view/edit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Confirm Delete"),
                      content: const Text(
                          "Are you sure you want to delete this item?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            data.delete();
                            BlocProvider.of<MemberCubit>(context)
                                .fetchAllMember();
                            Navigator.pop(context);
                          },
                          child: const Text("Delete"),
                        ),
                      ],
                    );
                  },
                );
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
                ),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Hero(
                      flightShuttleBuilder: (BuildContext flightContext,
                          Animation<double> animation,
                          HeroFlightDirection flightDirection,
                          BuildContext fromHeroContext,
                          BuildContext toHeroContext) {
                        return AnimatedBuilder(
                          animation: animation,
                          builder: (context, child) {
                            return SizeTransition(
                              sizeFactor: animation,
                              child: child,
                            );
                          },
                          child: toHeroContext.widget,
                        );
                      },
                      tag: 'image${data.imagePath}',
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: data.imagePath != null &&
                                File(data.imagePath!).existsSync()
                            ? FileImage(File(data.imagePath!))
                            : null,
                        backgroundColor: data.imagePath == null ||
                                !File(data.imagePath!).existsSync()
                            ? Colors.grey
                            : null,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            data.fanction,
                            style: const TextStyle(
                              color: Colors.grey,
                              inherit: false,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
