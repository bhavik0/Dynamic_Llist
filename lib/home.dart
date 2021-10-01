import 'dart:convert';

import 'package:dlist/data_class.dart';
import 'package:dlist/user_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final jsonData = await rootBundle.loadString("assets/json/data.json");
    final jsonDecodData = jsonDecode(jsonData);
    var userData = jsonDecodData["user"];
    // List<User> user =
    //     List.from(userData).map<User>((user) => User.fromMap(user)).toList();
    UserModel.items =
        List.from(userData).map<User>((user) => User.fromMap(user)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic List View'),
      ),
      body: (UserModel.items.isNotEmpty)
          ? ListView.builder(
              itemCount: UserModel.items.length,
              itemBuilder: (context, index) {
                return UserWidget(
                  item: UserModel.items[index],
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(
                color: Colors.indigo,
              ),
            ),
    );
  }
}
