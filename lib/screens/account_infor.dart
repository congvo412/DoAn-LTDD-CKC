import 'package:flutter/material.dart';
import 'package:doan_ltdd/main.dart';
import 'package:doan_ltdd/screens/home.dart';
import 'package:doan_ltdd/screens/category.dart';
import 'package:doan_ltdd/screens/account.dart';
import 'package:doan_ltdd/screens/notification.dart';
import 'package:doan_ltdd/screens/cart.dart';
import 'package:doan_ltdd/screens/login.dart';

class AccountInforPage extends StatelessWidget {
  const AccountInforPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.deepOrange,
        title: Center(child: Text("Hồ sơ của tôi:")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.settings),
          ),
        ],
      ),
      body: ListView(
    children: [
      Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
        Padding(
        padding: EdgeInsets.only(left:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[   
             Text("Tên: Võ Chí Công",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
          ],

        ),
      ),
      Padding(
        padding: EdgeInsets.only(right:5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.grey.shade400,),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Text("Chỉnh sửa",style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,)),
          ),
          onPressed: (){},
        ),
      ),
     ],
    ),
    Divider(height: 20,
            thickness: 0.3,
            color: Colors.black,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
        Padding(
        padding: EdgeInsets.only(left:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[   
             Text("Tên đăng nhập: congvo",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
          ],

        ),
      ),
      Padding(
        padding: EdgeInsets.only(right:5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.grey.shade400,),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Text("Chỉnh sửa",style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,)),
          ),
          onPressed: (){},
        ),
      ),
     ],
    ),
    Divider(height: 20,
            thickness: 0.3,
            color: Colors.black,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
        Padding(
        padding: EdgeInsets.only(left:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[   
             Text("Giới tính: Nam",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
          ],

        ),
      ),
      Padding(
        padding: EdgeInsets.only(right:5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.grey.shade400,),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Text("Chỉnh sửa",style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,)),
          ),
          onPressed: (){},
        ),
      ),
     ],
    ),
    Divider(height: 20,
            thickness: 0.3,
            color: Colors.black,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
        Padding(
        padding: EdgeInsets.only(left:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[   
             Text("Ngày sinh: 04/12/2001",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
          ],

        ),
      ),
      Padding(
        padding: EdgeInsets.only(right:5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.grey.shade400,),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Text("Chỉnh sửa",style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,)),
          ),
          onPressed: (){},
        ),
      ),
     ],
    ),
    Divider(height: 20,
            thickness: 0.3,
            color: Colors.black,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
        Padding(
        padding: EdgeInsets.only(left:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[   
             Text("Số điện thoại: 0396327338",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
          ],

        ),
      ),
      Padding(
        padding: EdgeInsets.only(right:5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.grey.shade400,),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Text("Chỉnh sửa",style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,)),
          ),
          onPressed: (){},
        ),
      ),
     ],
    ),
    Divider(height: 20,
            thickness: 0.3,
            color: Colors.black,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
        Padding(
        padding: EdgeInsets.only(left:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[   
             Text("Email: congvo@gmail.com",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
          ],

        ),
      ),
      Padding(
        padding: EdgeInsets.only(right:5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.grey.shade400,),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Text("Chỉnh sửa",style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,)),
          ),
          onPressed: (){},
        ),
      ),
     ],
    ),
    Divider(height: 20,
            thickness: 0.3,
            color: Colors.black,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
        Padding(
        padding: EdgeInsets.only(left:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[   
             Text("Tài Khoản Ngân Hàng",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
          ],

        ),
      ),
      Padding(
        padding: EdgeInsets.only(right:5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.grey.shade400,),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Text("Chỉnh sửa",style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,)),
          ),
          onPressed: (){},
        ),
      ),
     ],
    ),
    Divider(height: 20,
            thickness: 0.3,
            color: Colors.black,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
        Padding(
        padding: EdgeInsets.only(left:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[   
             Text("Thay Đổi Mật Khẩu",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
          ],

        ),
      ),
      Padding(
        padding: EdgeInsets.only(right:5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.grey.shade400,),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Text("Chỉnh sửa",style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,)),
          ),
          onPressed: (){},
        ),
      ),
     ],
    ),
    Divider(height: 20,
            thickness: 0.3,
            color: Colors.black,),
  ],
  
      ),
    ); 
  }
}
