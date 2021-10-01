import 'package:flutter/material.dart';

import 'data_class.dart';

class UserWidget extends StatelessWidget {
  final User item;

  const UserWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.profile),
        title: Text(item.name),
        subtitle: Text(item.email),
        trailing: Text(item.id.toString()),
        onTap: () {
          print("${item.name} Pressed");
        },
      ),
    );
  }
}
