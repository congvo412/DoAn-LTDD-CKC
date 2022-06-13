import 'package:flutter/material.dart';
import 'package:doan_ltdd/screens/cart.dart';
import 'package:doan_ltdd/screens/product_details.dart';
import 'package:doan_ltdd/screens/category.dart';
import 'package:doan_ltdd/models/product_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: HomePageDetay(),
    );
  }
}
class HomePageDetay extends StatefulWidget {
  const HomePageDetay({Key? key}) : super(key: key);
  @override
  State<HomePageDetay> createState() => _HomePageDetayState();
}

class _HomePageDetayState extends State<HomePageDetay> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                  },
                  child: Image(
                        height:100,
                        width:100,
                        image: AssetImage("assets/images/logoshop.png"),
                  )
                ),
      
                Container(
                  height: 45,
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,color:Colors.deepOrange),
                        hintText: "Search",
                        hintStyle: TextStyle(
                            fontSize: 12, color: Colors.black.withOpacity(0.4)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
            ),
            Padding(
                  padding: EdgeInsets.all(0),
                  child: IconButton(
                            icon: Icon(
                              Icons.shopping_cart,
                              color: Colors.deepOrange,
                            ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  ),
            ),   
            Padding(
                  padding: EdgeInsets.all(0),
                  child: IconButton(
                            icon: Icon(
                              Icons.message,
                              color: Colors.deepOrange,
                            ),
                  onPressed: () {},
                  ),
            ),    
           ],
            ),

            Divider(
                  color: Colors.black,
                ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => CategoryPage()));
                  },
                  child: Text(
                        "Danh Mục",
                        style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
                  ),
                  InkWell(
                  onTap: () {
                  },
                  child: Text(
                        "Sale",
                        style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
                  )
              ],
              ),
          SingleChildScrollView(        
            padding:EdgeInsets.all(0),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
              Container(
              padding: const EdgeInsets.only(left:0),
              child: Hero(
                tag:"assets/images/banner1.jpg",
                child: Image(
                  height: 215,
                width: 420,
                  image: AssetImage("assets/images/banner1.jpg"),
                ),
              ),
              ),
              Container(
              padding: const EdgeInsets.only(left:0),
              child: Hero(
                tag:"assets/images/banner2.jpg",
                child: Image(
                  height: 215,
                width: 420,
                  image: AssetImage("assets/images/banner2.jpg"),
                ),
              ),
              ),
              Container(
              padding: const EdgeInsets.only(left:0),
              child: Hero(
                tag:"assets/images/banner3.jpg",
                child: Image(
                  height: 215,
                width: 420,
                  image: AssetImage("assets/images/banner3.jpg"),
                ),
              ),
              ),
              ],
            ),
            ),
           
            Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                            children:[
                              Divider(color: Colors.black),  
                              Text("Sản Phẩm Nổi Bật",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize:15,
                                              fontWeight: FontWeight.bold),
                              ),
                              Divider(color: Colors.black),
                            ]
                            ),
                 ),
                 SizedBox (height: 10),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: products.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                  crossAxisCount: 2,
                  childAspectRatio: 9/10, 
                  crossAxisSpacing: 0,  
                  mainAxisSpacing: 10, 
              ),  
              itemBuilder: (BuildContext context, int index){  
            return
            Container(
              child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height:230,
                  width:180,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15)
                            ),
                      child: Stack(
                      children: <Widget> [
                        GestureDetector(
                          
                          onTap:(){
                          Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => DetailPage(product: products[index])));
                          },
                            child: Padding
                            ( padding:EdgeInsets.only(left:10),
                              child: Image(
                              height: 160,
                              width: 160,
                              image: AssetImage("assets/images/${products[index].image}"),
                              fit: BoxFit.cover,
                            ),  
                            ),                        
                        ),
                        Positioned(
                              bottom:5,
                              right: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(0),
                                    child: IconButton(
                                              icon: Icon(
                                                Icons.add_shopping_cart,
                                                color: Colors.deepOrange,
                                              ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => CartPage()));
                                    },
                                    ),
                              ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(10,170,0,0),
                            child:Text("${products[index].price}00 VNĐ", style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),
                            ), 
                            ), 
                            Padding(padding: EdgeInsets.fromLTRB(10,190,0,0),
                            child:Text(products[index].name, style: TextStyle(fontWeight: FontWeight.w600),
                            ), 
                            ),    
                      ],
                    ),
                ),
              ],
              ),
            );
          },
        ),
        ],
        ),
    );
  }
}
