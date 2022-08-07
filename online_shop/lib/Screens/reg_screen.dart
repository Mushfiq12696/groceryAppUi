
import 'package:flutter/material.dart';
import 'package:online_shop/Screens/signin_screen.dart';
import 'package:online_shop/Screens/verify_screen.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({Key? key}) : super(key: key);

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber.shade300,
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 320,
                width: double.infinity,
                child: Image.asset(
                  'images/yoga.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to',
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Registrantion Page',
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Please write to correct information',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onTap: () {},
                controller: _email,
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(
                    Icons.email_rounded,
                    color: Colors.deepOrangeAccent,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              TextField(
                onTap: () {},
                controller: _pass,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.deepOrangeAccent,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => VerifyScreen()));
                    },
                    child: Text('Continue')),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 180),
                child: Row(
                  children: [
                    Text(
                      'Already have an Accounts?',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignInScreen()));
                        },
                        child: Text('Login')),
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