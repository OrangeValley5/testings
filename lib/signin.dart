import 'package:flutter/material.dart';
import 'package:earnify/signup.dart';
//import 'package:flutter_application_2/payment_page.dart';

import 'colors.dart' as color;

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  void _handleTextTap(BuildContext context) {
    // Add your logic here when the text is tapped
    print('Text is tapped!');
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const Register()), // Navigate to SecondPage
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    "Welcome back!",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Enter your email address and password to continue",
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
                        color: color.AppColor.greyish,
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
                        color: color.AppColor.greyish,
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
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () => _handleTextTap(context),
                        child: const Text(
                          "forgot password ?",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: const Text(
                              "Sign in",
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
                          "Don't have an account?",
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
                          " click here to create one ",
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
