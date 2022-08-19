import 'package:flutter/material.dart';
import 'package:food_app/data/data.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/models/order.dart';

class RecentOrders extends StatelessWidget {
  RecentOrders({Key? key, this.food}) : super(key: key);
  Food? food;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        itemCount: currentUser.orders!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          Order order = currentUser.orders![index];
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: double.infinity,
                        child: Image.asset(
                          '${order.food!.imageUrl}',
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 4,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${order.food!.name}',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Text(
                              '${order.restaurant!.name}',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Text(
                              '${order.date}',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.orange,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 25,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
