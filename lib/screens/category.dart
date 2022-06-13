import 'package:flutter/material.dart';
import 'category_tab.dart';
class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);
  @override
  _CategoryPageState createState() => _CategoryPageState();
}
class _CategoryPageState extends State<CategoryPage>
with SingleTickerProviderStateMixin{

  late TabController _tabController;

   @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),       
        title: Text(
          "Danh mục",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: ListView(padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[ 
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Colors.grey.shade400,
              tabs: const [
                Tab(
                  child: Text('Mới nhất',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
                Tab(
                  child: Text('Bán chạy',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
                Tab(
                  child: Text('Sắp xếp theo giá',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                )
              ]),
              Container(
                height: MediaQuery.of(context).size.height - 50.0,
                width: double.infinity,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    CategoryTab(),
                    CategoryTab(),
                    CategoryTab(),
                  ]
                )
              )
        ],
      ),
    );
  }
}
