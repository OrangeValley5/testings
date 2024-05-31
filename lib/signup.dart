import 'package:earnify/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:earnify/signin.dart';

//import 'package:flutter_application_2/payment_page.dart';

import 'colors.dart' as color;

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  void _handleTextTap(BuildContext context) {
    // Add your logic here when the text is tapped
    print('Text is tapped!');

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => Login()), // Navigate to SecondPage
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 25, top: 80, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Create account",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Enter your email address and password to create an account",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.w300),
                  ),
                  Container(),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 12, top: 0, right: 12),
                    decoration: BoxDecoration(
                        color: color.AppColor.lightgray,
                        borderRadius: BorderRadius.circular(20)),
                    child: const TextField(
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Enter your username',
                        labelText: 'Username',
                        labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 12, top: 0, right: 12),
                    decoration: BoxDecoration(
                        color: color.AppColor.lightgray,
                        borderRadius: BorderRadius.circular(20)),
                    child: const TextField(
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Enter your email address',
                        labelText: 'Email',
                        labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 12, top: 0, right: 12),
                    decoration: BoxDecoration(
                        color: color.AppColor.lightgray,
                        borderRadius: BorderRadius.circular(20)),
                    child: const TextField(
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        hintText: '*******',
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 12, top: 0, right: 12),
                    decoration: BoxDecoration(
                        color: color.AppColor.lightgray,
                        borderRadius: BorderRadius.circular(20)),
                    child: const TextField(
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        hintText: '(Optional)',
                        labelText: 'Referral code(optional)',
                        labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Dashboard()), // Navigate to SecondPage
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: const Text(
                              "Create account",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: InkWell(
                        onTap: () => _handleTextTap(context),
                        child: const Text(
                          "Already have an account? ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                        ),
                      )),
                      Center(
                          child: InkWell(
                        onTap: () => _handleTextTap(context),
                        child: const Text(
                          "click here to login ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.orange,
                              fontWeight: FontWeight.w400),
                        ),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
