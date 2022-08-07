import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_shop/Screens/custom_nav_bar.dart';
import 'package:online_shop/Screens/reg_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 136, 193, 219),
      body: Container(
        margin: EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 200,
                    ),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        //fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Stack(
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
                          'Pallab Mistry',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Are you Sure?'),
                                  content:
                                      Text('Do you want to Log Out from the\napp?'),
                                  backgroundColor: Colors.amberAccent.shade700,
                                  actions: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          RegScreen()));
                                            },
                                            child: Text('YES')),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          CustomBottomNavBar()));
                                            },
                                            child: Text('No')),
                                      ],
                                    ),
                                  ],
                                ),
                              );

                              /*AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  title: Text('Are You sure?'),
                                  content: Text('Do You want to Quit?'),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Yes'))
                                  ],
                                ),*/
                            },
                            child: Text('Log Out')),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 10,
                    right: 15,
                    top: 0,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 10),
                            child: Icon(
                              Icons.arrow_circle_up_outlined,
                              color: Colors.deepOrange,
                            ),
                          ),
                          Text('Order history'),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 10),
                            child: Icon(
                              Icons.home_mini,
                              color: Colors.deepOrange,
                            ),
                          ),
                          Text('Delivery address'),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 10),
                            child: Icon(
                              Icons.card_membership_sharp,
                              color: Colors.deepOrange,
                            ),
                          ),
                          Text('Card and payment'),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 10),
                            child: Icon(
                              Icons.location_history,
                              color: Colors.deepOrange,
                            ),
                          ),
                          Text('Tracking my order'),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
