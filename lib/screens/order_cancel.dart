import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../main.dart';
import 'order_details.dart';

class CancelOderPage extends StatelessWidget{
  const CancelOderPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    final Product args = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Hủy Đơn Hàng",
          style: TextStyle(fontSize: 20,color: Colors.black,)
        ),
      ),
      body: SafeArea(
        child:ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding:EdgeInsets.only(top:20)),
                Image(
                  image: AssetImage('assets/images/${args.image}'),
                  width: 250,
                  height: 250,
                  fit: BoxFit.fill,
                  ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding (
                      padding: EdgeInsets.all(10),
                      child: Text("Sản phẩm: ${args.name}",
                      style:TextStyle(fontSize:20, fontWeight: FontWeight.bold,))
                    ),
                     Padding (
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.cancel,color:Colors.red,size:60),
                      
                     ),
                      Padding (
                      padding: EdgeInsets.all(5),
                      child: Text("Hủy Đơn Hàng Thành Công",
                      style:TextStyle(fontSize:22, fontWeight: FontWeight.bold,))
                    ),
                   
                    Padding (
                      padding: EdgeInsets.all(0),
                      child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.deepOrange,),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Text(
                  'Trở về Trang Chủ',
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),
                ),
              ),
              onPressed: ()  {
                       Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShopingTab(),
                        ));
              },
            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
        ),
      ),
  );
  }
}
            