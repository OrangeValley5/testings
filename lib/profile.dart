import 'package:flutter/material.dart';
import 'package:earnify/splashscreen.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
    // Start a timer to navigate to the next screen after 5 seconds
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
              height: MediaQuery.of(context).size.height * 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Profile',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Tosin',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Welcome back !',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: const EdgeInsets.all(18),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 238, 238, 238),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.people,
                          color: Colors.black,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            'Update Profile',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromARGB(255, 25, 25, 25)),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color.fromARGB(255, 163, 163, 163),
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(18),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 238, 238, 238),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.people,
                          color: Colors.black,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            'Add Bank',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromARGB(255, 25, 25, 25)),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color.fromARGB(255, 163, 163, 163),
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(18),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 238, 238, 238),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.people,
                          color: Colors.black,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            'My Orders',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromARGB(255, 25, 25, 25)),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color.fromARGB(255, 163, 163, 163),
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(18),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 238, 238, 238),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.people,
                          color: Colors.black,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            'Change Password',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromARGB(255, 25, 25, 25)),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color.fromARGB(255, 163, 163, 163),
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(18),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 238, 238, 238),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.people,
                          color: Colors.black,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            'Contact Us',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromARGB(255, 25, 25, 25)),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color.fromARGB(255, 163, 163, 163),
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(18),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 238, 238, 238),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.people,
                          color: Colors.black,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            'Delete Account',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromARGB(255, 25, 25, 25)),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color.fromARGB(255, 163, 163, 163),
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Logout',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromARGB(255, 255, 44, 44)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
