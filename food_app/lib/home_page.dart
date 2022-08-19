import 'package:flutter/material.dart';
import 'package:food_app/data/data.dart';
import 'package:food_app/screens/near_resturant.dart';
import 'package:food_app/screens/recent_orders.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle,
              size: 35,
            )),
        title: Text(
          "Food Delivery",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Center(
              child: Text(
                "(${currentUser.orders!.length})",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 10, right: 10, bottom: 10),
              child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      suffixIcon: Icon(
                        Icons.close,
                        size: 30,
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.grey)))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Recent Order",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RecentOrders(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Near me Resturant",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            NearResturant()
          ],
        ),
      ),
    );
  }
}
