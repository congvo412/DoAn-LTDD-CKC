import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Thông báo",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
        Divider(
          color: Colors.grey,
        ),
        Container(
            child: Text("Chưa có thông báo !!!",
            style: TextStyle(fontSize: 20, color: Colors.black)),
        ),
      ],
      ),
    );
  }
}
