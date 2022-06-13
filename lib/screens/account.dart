import 'package:flutter/material.dart';
import 'package:doan_ltdd/main.dart';
import 'package:doan_ltdd/screens/home.dart';
import 'package:doan_ltdd/screens/category.dart';
import 'package:doan_ltdd/screens/account.dart';
import 'package:doan_ltdd/screens/notification.dart';
import 'package:doan_ltdd/screens/cart.dart';
import 'package:doan_ltdd/screens/login.dart';

import 'account_infor.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.deepOrange,
        title: Center(child: Text("Tài khoản của tôi:\n\t\t\t\t\t\t\t\tcongvo")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.settings),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {
                         Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>const AccountInforPage()));
                      },
                      child: Text(
                        "Hồ sơ",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Đơn hàng",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Ví của tôi",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Hỗ trợ",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Địa chỉ",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Voucher của tôi",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Cài đặt",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                             AlertDialog(
                              content: Text("Bạn có chắc chắn muốn đăng xuất không?"),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context,'/');                                
                                  },
                                  child: const Text('OK'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Cancel'),
                                ),
                              ],
                            )
                        );
                      },
                      child: Text(
                        "Đăng xuất",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
            ],
          )
        ],
      ),
    ); 
  }
}
