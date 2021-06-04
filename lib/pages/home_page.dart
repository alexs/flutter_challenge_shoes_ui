import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        shadowColor: Colors.white,
        elevation: 0,
        actions: getActions(),
      ),
      body: Column(
        children: [
          getSubOptions(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: [
                getItem(
                    "https://allsportsmexico.com/wp-content/uploads/2021/01/INFINITY-ROJOS1.png",
                    "Nike Air Max 97",
                    "299.00"),
                getItem(
                    "https://static.nike.com/a/images/t_default/fe715079-7f06-4897-8bcf-3230721c94ac/calzado-air-force-1-crater-pKSnP7.png",
                    "Nike Air Force 1",
                    "650.00"),
                getItem(
                    "https://static.nike.com/a/images/t_default/ae5a0f43-aaea-4256-a81d-945dc3c81fe5/calzado-de-tenis-para-cancha-dura-court-air-max-volley-cStf80.png",
                    "Nike Ben & Jerry's",
                    "900.00")
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getActions() {
    return <Widget>[
      IconButton(
        padding: EdgeInsets.only(left: 20, right: 20),
        icon: Icon(Icons.search),
        onPressed: () {
          print("Search button pressed");
        },
      ),
      IconButton(
        padding: EdgeInsets.only(left: 20, right: 20),
        icon: Icon(Icons.filter_list),
        onPressed: () {
          print("Filter pressed");
        },
      ),
      IconButton(
        padding: EdgeInsets.only(left: 20, right: 20),
        icon: CircleAvatar(
          backgroundColor: Colors.black,
          child: Text(
            "3",
            style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        onPressed: () {
          print("badge pressed");
        },
      ),
    ];
  }

  Widget getSubOptions() {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(left: 40, right: 40, bottom: 30),
      child: Row(children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Text("Shoes",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))),
            ],
          ),
        ),
        Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(children: [
                Text("Sort by"),
                Icon(Icons.arrow_drop_down_outlined),
              ]),
            ]),
      ]),
    );
  }

  getItem(String imageUrl, String name, String price) {
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      child: Card(
          color: Colors.white70,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white70),
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Image.network(
                imageUrl,
                width: 200,
              ),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
              Text('\$$price', style: TextStyle(height: 1.6))
            ]),
          )),
    );
  }
}
