import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _showCustomDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(80),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: 240,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFF0E1),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Center(
                        child: Text(
                      'i',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFF9123),
                      ),
                    ))),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Oops",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "You do not have sufficient balance to complete this request. Kindly fund you main balance and try again ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Text(
                          "Got it",
                          style: TextStyle(fontSize: 12),
                        ),
                        onPressed: () {
                          // Handle subscription logic here
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    // Start a timer to navigate to the next screen after 5 seconds
    Future.delayed(Duration(seconds: 5), () {
      // Navigate to the next screen here
      // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen()));
    });

    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 0, top: 50, right: 0),
              height: MediaQuery.of(context).size.height * 1.3,
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Tosin',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Welcome back !',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        const Center(
                          child: Icon(Icons.notifications),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: SizedBox(
                      height:
                          120, // Adjust height to fit the containers and indicator
                      child: Column(
                        children: [
                          Expanded(
                            child: PageView(
                              controller: _pageController,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(20),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Main Balance',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                            child: Text(
                                              'N54,000',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          Icon(
                                            Icons.visibility,
                                            color: Colors.white,
                                            size: 14,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(20),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: const BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Bonus Balance',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                            child: Text(
                                              'N22,500',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          Icon(
                                            Icons.visibility,
                                            color: Colors.white,
                                            size: 14,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          SmoothPageIndicator(
                            controller: _pageController,
                            count:
                                2, // Adjust the count based on the number of containers
                            effect: const WormEffect(
                                dotHeight: 4,
                                dotWidth: 14,
                                spacing: 6,
                                activeDotColor: Colors.black,
                                dotColor: Color.fromARGB(255, 230, 230, 230)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 45,
                            width: 100,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 220, 220, 220),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.add,
                                  size: 20,
                                ),
                                Text('Deposit')
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              _showCustomDialog();
                            },
                            child: Container(
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 220, 220, 220),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.remove,
                                    size: 20,
                                  ),
                                  Text('Withdraw')
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: Text(
                      'Quick Options',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            height: 180,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 220, 220, 220),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: const Icon(Icons.call)),
                                const Expanded(
                                  child: SizedBox(
                                    height: 20,
                                  ),
                                ),
                                const Text(
                                  'Airtime',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  'Purchase your favorite data bundles',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color:
                                          Color.fromARGB(255, 103, 103, 103)),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            height: 180,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 220, 220, 220),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: const Icon(Icons.wifi)),
                                const Expanded(
                                  child: SizedBox(
                                    height: 20,
                                  ),
                                ),
                                const Text(
                                  'Data',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  'Purchase your favorite data bundles',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color:
                                          Color.fromARGB(255, 103, 103, 103)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFFF0E1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Activate your membership',
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'To become eligible for performing task, bonus, withdrawal, referrals, cheap airtime & data',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 30,
                            width: 110,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Become a member',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        const Expanded(child: Text('Transactions')),
                        Container(
                          height: 20,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 233, 233, 233),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'View all',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //New stuffs can go here
                  const SizedBox(height: 50),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 40,
                            height: 40,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: const Color(0xFFFFF0E1),
                                borderRadius: BorderRadius.circular(50)),
                            child: const Center(
                                child: Text(
                              'i',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFFF9123),
                              ),
                            ))),
                        const SizedBox(height: 10),
                        const Text(
                          'You are yet to perform a transaction',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                  ),

                  //New stuffs can go here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
