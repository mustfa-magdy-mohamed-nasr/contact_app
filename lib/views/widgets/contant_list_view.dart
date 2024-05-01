import 'package:flutter/material.dart';

class ContantListView extends StatelessWidget {
  const ContantListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
      return Card(
        child: ListTile(
          leading: Container(
            width: 80,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          title: const Text("title"),
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
          subtitle: const Text(
            "fanction",
            style: TextStyle(color: Colors.grey, inherit: false),
          ),
        ),
      );
    });
  }
}
