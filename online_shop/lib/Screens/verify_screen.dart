import 'package:flutter/material.dart';
import 'package:online_shop/Screens/otp_screen.dart';
import 'package:online_shop/Screens/phone_number.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.withOpacity(0.3),
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          color: Colors.transparent.withOpacity(.1),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(75),
              child: Image.asset(
                'assets/images/logo_tg.jpg',
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          'Verify Your Phone Number',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        NumberVerify(),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) => OTPScreen())),
              );
            },
            child: Text('Send OTP'))
      ]),
    );
  }
}
