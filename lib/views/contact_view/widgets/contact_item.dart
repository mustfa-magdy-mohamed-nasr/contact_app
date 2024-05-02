import 'package:contact_app/model/contact_model.dart';
import 'package:flutter/material.dart';
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
      endActionPane: ActionPane(motion: const StretchMotion(), children: [
        SlidableAction(
          onPressed: (context) {
            data.delete();
          },
          backgroundColor: Colors.red,
          icon: Icons.delete,
          label: 'delete',
        ),
      ]),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/page2');
        },
        child: ListTile(
          leading: Container(
            width: 60,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          title: Text(data.name),
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
          subtitle: Text(
            data.fanction,
            style: const TextStyle(color: Colors.grey, inherit: false),
          ),
        ),
      ),
    );
  }
}
/**
 *  Slidable(
              endActionPane:
                  ActionPane(motion:  StretchMotion(), children: [
                SlidableAction(
                  onPressed: (context) {
                    // member.dleat()
                  },
                  backgroundColor: Colors.red,
                  icon: Icons.delete,
                  label: 'delete',
                ),
              ]),
 */