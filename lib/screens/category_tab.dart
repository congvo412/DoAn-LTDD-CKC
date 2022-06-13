import 'package:flutter/material.dart';
import 'product_details.dart';
import '../models/product_model.dart';
import 'cart.dart';

class CategoryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children:[
          const SizedBox(height:15),
                  _buildCard(),    
          const SizedBox(height: 200),
          ]
        ),
      ),
    );
  }

  Widget _buildCard() {
    return GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: products.length,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                        crossAxisCount: 2,
                        childAspectRatio: 6/7, 
                        crossAxisSpacing: 5,  
                        mainAxisSpacing: 10, 
              ),  
              itemBuilder: (BuildContext context, int index){  
                return Container(
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
      }
    );
  }
}