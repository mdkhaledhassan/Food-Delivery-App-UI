import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/models/restaurant.dart';

class ResturantInfo extends StatelessWidget {
  ResturantInfo({Key? key, this.restaurant}) : super(key: key);
  Restaurant? restaurant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 200,
            child: Stack(
              children: [
                Image.asset(
                  '${restaurant!.imageUrl}',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
                Positioned(
                    top: 30,
                    left: 20,
                    right: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Icon(
                          Icons.heart_broken,
                          color: Colors.red,
                          size: 40,
                        )
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${restaurant!.name}',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${restaurant!.address}',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Text(
                  'Rating: ${restaurant!.rating}',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Review",
                    style: TextStyle(color: Colors.white),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Contact",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Menu",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: GridView.count(
                shrinkWrap: true,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                crossAxisCount: 2,
                children: List.generate(restaurant!.menu!.length, (index) {
                  Food food = restaurant!.menu![index];
                  return Container(
                    height: 120,
                    width: 120,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        '${food.imageUrl}',
                        fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
