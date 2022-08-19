import 'package:flutter/material.dart';
import 'package:food_app/data/data.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:food_app/screens/resturant_info.dart';

class NearResturant extends StatelessWidget {
  NearResturant({
    Key? key,
  }) : super(key: key);

  // _resturants() {
  //   List<Widget> resturantlist = [];
  //   restaurants.forEach((Restaurant restaurant) {
  //     resturantlist.add(GestureDetector(
  //       child: Padding(
  //         padding: const EdgeInsets.only(bottom: 20),
  //         child: Container(
  //           height: 180,
  //           decoration: BoxDecoration(
  //               color: Colors.grey, borderRadius: BorderRadius.circular(20)),
  //           child: Row(
  //             children: [
  //               Expanded(
  //                 flex: 4,
  //                 child: ClipRRect(
  //                   borderRadius: BorderRadius.circular(20),
  //                   child: Container(
  //                     child: Image.asset(
  //                       '${restaurant.imageUrl}',
  //                       fit: BoxFit.cover,
  //                       height: double.infinity,
  //                       width: double.infinity,
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //               Expanded(
  //                 flex: 6,
  //                 child: Padding(
  //                   padding: const EdgeInsets.only(left: 10),
  //                   child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       Text(
  //                         '${restaurant.name}',
  //                         style: TextStyle(color: Colors.black, fontSize: 20),
  //                       ),
  //                       Text(
  //                         '${restaurant.address}',
  //                         style: TextStyle(color: Colors.black, fontSize: 20),
  //                       ),
  //                       Text(
  //                         'Rating: ${restaurant.rating}',
  //                         style: TextStyle(color: Colors.black, fontSize: 20),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ));
  //   });
  //   return Column(
  //     children: resturantlist,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          Restaurant restaurant = restaurants[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ResturantInfo(
                  restaurant: restaurant,
                ),
              ));
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          child: Image.asset(
                            '${restaurant.imageUrl}',
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${restaurant.name}',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Text(
                              '${restaurant.address}',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Text(
                              'Rating: ${restaurant.rating}',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
