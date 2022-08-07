import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/Screens/popular_deals.dart';
import 'package:online_shop/models/banner.dart';
import 'package:online_shop/models/best_deals.dart';
import 'package:online_shop/models/items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final popular_list = BestDeals.best_Deals();
  final banner_list = BannerInfo.groceryList();
  final item_list = Items.itemList();
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: isClick == false ? Color(0xFFE6F2FF) : Colors.black,
          padding: EdgeInsets.only(top: 5, right: 15, left: 15, bottom: 5),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hand pick fresh\nonly for you',
                          style: TextStyle(
                            color:
                                isClick == false ? Colors.black : Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'JoseFineSans',
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.notifications_none_outlined,
                              color: isClick == false
                                  ? Colors.black
                                  : Colors.white,
                              size: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isClick = !isClick;
                                });
                              },
                              child: Container(
                                alignment: isClick == false
                                    ? Alignment.topLeft
                                    : Alignment.topRight,
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: isClick == false
                                      ? Color.fromARGB(255, 228, 226, 226)
                                      : Color.fromARGB(255, 12, 6, 24),
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(
                                    color: isClick == false
                                        ? Color.fromARGB(255, 210, 206, 206)
                                        : Color(0xFF3D1E71),
                                    width: 3,
                                  ),
                                  image: DecorationImage(
                                    image: isClick == false
                                        ? AssetImage('assets/images/day.jpg')
                                        : AssetImage('assets/images/night.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Categories',
                            style: TextStyle(
                              color: isClick == false
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Mouse Memoirs',
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: isClick == false
                                    ? Color.fromARGB(185, 239, 118, 42)
                                    : Color.fromARGB(212, 230, 183, 117),
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                fontFamily: ''),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 80,
                      margin: EdgeInsets.only(top: 5, bottom: 0),
                      decoration: BoxDecoration(
                          // color: Colors.transparent.withOpacity(0.3),
                          ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: item_list.length,
                        itemBuilder: (context, index) {
                          // var item = item_list[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Container(
                              height: double.infinity,
                              width: 90,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 231, 75, 3)
                                    .withOpacity(0.9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    child: Image.asset(
                                      '${item_list[index].img}',
                                      height: 60,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text('${item_list[index].name}'),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: CarouselSlider.builder(
                  itemCount: banner_list.length,
                  itemBuilder: (contex, index, realIndex) {
                    return Container(
                      margin: EdgeInsets.only(right: 5),
                      width: MediaQuery.of(context).size.height * 0.7,
                      //color: Colors.grey,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage('${banner_list[index].img}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 160,
                    autoPlay: true,
                    pageSnapping: true,
                    autoPlayInterval: Duration(seconds: 2),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => PopularDeals()));
                            },
                            child: Text(
                              'Popular Deals',
                              style: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: isClick == false
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'See All',
                              style: TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                color: isClick == false
                                    ? Color.fromARGB(228, 240, 171, 11)
                                    : Color.fromARGB(232, 222, 152, 78),
                              ),
                            )),
                      ],
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: List.generate(
                          popular_list.length,
                          (index) => Stack(
                            children: [
                              Container(
                                alignment: Alignment.bottomCenter,
                                width: 200,
                                margin: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(15)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '${popular_list[index].name}',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 15,
                                right: 15,
                                top: 0,
                                child: CircleAvatar(
                                  radius: 80,
                                  backgroundImage:
                                      AssetImage('${popular_list[index].img}'),
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
            ],
          ),
        ),
      ),
    );
  }
}
