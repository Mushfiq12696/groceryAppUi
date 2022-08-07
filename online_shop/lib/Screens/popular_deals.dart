import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_shop/Screens/custom_nav_bar.dart';
import 'package:online_shop/Screens/home_screen.dart';
import 'package:online_shop/models/best_deals.dart';

class PopularDeals extends StatefulWidget {
  const PopularDeals({Key? key}) : super(key: key);

  @override
  State<PopularDeals> createState() => _PopularDealsState();
}

class _PopularDealsState extends State<PopularDeals> {
  final lists = BestDeals.best_Deals();
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 136, 178, 198).withOpacity(0.9),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: 0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => CustomBottomNavBar()));
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'Popular Deals',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20, left: 20, top: 5, bottom: 0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        //hoverColor: Colors.white,
                        //focusColor: Colors.white,
                        filled: true,
                        fillColor: isClick == false
                            ? Colors.white
                            : Colors.grey.shade400,

                        prefixIcon: Icon(Icons.search),
                        hintText: 'search for Anything',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                  lists.length,
                  (index) => Stack(
                    children: [
                      Container(
                        //alignment: Alignment.topCenter,
                        width: 200,
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '${lists[index].name}',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        left: 10,
                        right: 15,
                        top: 0,
                        child: CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage('${lists[index].img}'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
