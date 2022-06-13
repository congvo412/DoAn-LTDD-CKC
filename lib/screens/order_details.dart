import 'dart:io';
import 'package:flutter/material.dart';
import '../main.dart';
import '../models/product_model.dart';
import '../screens/checkout_success.dart';
import 'order_cancel.dart';

class OderDetailPage extends StatelessWidget{
  const OderDetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    final Product args = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Chi Tiết Đơn Hàng",
          style: TextStyle(fontSize: 20,color: Colors.black,)
        ),
      ),
      body: SafeArea(
        child:ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/${args.image}'),
                  width: 180,
                  height: 180,
                  fit: BoxFit.fill,
                  ),
                  SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding (
                      padding: EdgeInsets.all(10),
                      child: Text("Sản phẩm: ${args.name}",
                      style:TextStyle(fontSize:16, fontWeight: FontWeight.bold,))
                    ),
                     Padding (
                      padding: EdgeInsets.all(10),
                      child: Text("Size: ${args.size}",
                      style:TextStyle(fontSize:16, fontWeight: FontWeight.bold,))
                     ),
                      Padding (
                      padding: EdgeInsets.all(10),
                      child: Text("Giá tiền: ${args.price.toString()}00 VNĐ",
                      style:TextStyle(fontSize:16, fontWeight: FontWeight.bold,))
                    ),
                    Padding (
                      padding: EdgeInsets.all(10),
                      child: Text("Số lượng: 1",
                      style:TextStyle(fontSize:16, fontWeight: FontWeight.bold,))
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
              height: 10,
            ),
        _checkoutProduct(),
         SizedBox(
                height: 10,
              ),
        _checkoutAddress(),
        SizedBox(
                height: 10,
              ),
        _checkoutPay(context),
        ],
      ),
    ),
    bottomNavigationBar: BottomBar()
    );
  }
}
Widget _checkoutProduct(){
  return  Column(
    children: [
      Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
        Padding(
        padding: EdgeInsets.only(left:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[   
             Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
             Icon(Icons.monetization_on_outlined,color:Colors.deepOrange),
             SizedBox(width: 3),
             Text("Phương thức thanh toán"),
          ]
        ),
             SizedBox(height: 5),
             Text("Thanh toán khi nhận hàng",style:TextStyle(fontWeight:FontWeight.bold,fontSize:17)),
             SizedBox(height: 5),
          ],

        ),
      ),
     ],
    ),
    Divider(height: 2,
            thickness: 0.3,
            color: Colors.black,),
  ],
  );
}
Widget _checkoutAddress(){
  return Column(
    children: [
      Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
        Padding(
        padding: EdgeInsets.only(left:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[   
             Text("Địa chỉ nhận hàng:",style:TextStyle(fontSize:15)),
             SizedBox(height: 5),
             Text("65 Huỳnh Thúc Kháng, HCM",style:TextStyle(fontWeight:FontWeight.bold,fontSize:17)),
             SizedBox(height: 5),
          ],

        ),
      ),
     ],
    ),
    Divider(height: 2,
            thickness: 0.3,
            color: Colors.black,),
  ],
  );
}
Widget _checkoutPay(context){
  final Product args = ModalRoute.of(context)!.settings.arguments as Product;
  return Container(
   color:Colors.grey.shade300,
   height:200,
   width:200,
   padding: EdgeInsets.only(top: 15),
   child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
      padding: EdgeInsets.only(left:10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
        Text("Mã Đơn Hàng: ",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold,)), 
        SizedBox(height: 10),
        Text("Tổng tiền sản phẩm: ",style:TextStyle(fontSize:16)),
        SizedBox(height: 5),
        Text("Tổng tiền phí vận chuyển: ",style:TextStyle(fontSize:16)),
        SizedBox(height: 5),
        Text("Tổng thanh toán: ",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold,)), 
     ],
    ),
    ),
    Padding(
      padding: EdgeInsets.only(right:10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children:[
        Text("20220221CKC00${args.id}",style:TextStyle(fontSize:16)),
        SizedBox(height: 10),
        Text("${args.price}00 VNĐ",style:TextStyle(fontSize:16)),
        SizedBox(height: 5),
        Text("30.000 VNĐ",style:TextStyle(fontSize:16)),
        SizedBox(height: 5),
        Text("${args.price + 30.000}00 VNĐ",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold,)), 
     ],
    ),
    ),
    Divider(height: 2,
            thickness: 0.3,
            color: Colors.black,),
  ],
  ),
  );
}
class BottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  final Product args = ModalRoute.of(context)!.settings.arguments as Product;
  return BottomAppBar(
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.deepOrange,),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 13, 20, 13),
                  child: Text("< Trang Chủ",
                        style:TextStyle(fontSize:19,)),
                ),
                onPressed: (){
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShopingTab()));}
              ),
            ),
            SizedBox(width:10),
            Padding(
              padding: EdgeInsets.all(0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.lightBlue,),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 13, 20, 13),
                  child: Text("Hủy Đơn Hàng",
                        style:TextStyle(fontSize:19,)),
                ),
                onPressed: (){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                             AlertDialog(
                              content: Text("Bạn có chắc chắn muốn hủy đơn hàng này không?"),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) =>const  CancelOderPage(),
                                      settings: RouteSettings(
                                        arguments: args,
                                      )));                               
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
