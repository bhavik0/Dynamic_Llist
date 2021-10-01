import 'package:dlist/data_class.dart';
import 'package:dlist/user_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(11, (index) => UserModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic List View'),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return UserWidget(
            item: dummyList[index],
          );
        },
      ),
    );
  }
}
