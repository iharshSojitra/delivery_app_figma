import 'package:delivery_app_figmaa/common_item/common_btn.dart';
import 'package:delivery_app_figmaa/screens/tab_bar.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.70,
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    selected = value;
                  });
                },
                children: [
                  Column(
                    children: [
                      Container(
                        height: height * 0.55,
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            image: DecorationImage(
                                image: AssetImage('assets/images/img_1.png'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Cash on delivery or E-payment",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Our delivery will ensure your items are delivered",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "right to the door steps",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: height * 0.55,
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            image: DecorationImage(
                                image: AssetImage('assets/images/img_2.png'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Delivery Right to Your Door Step",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Our delivery will ensure your items are delivered",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "right to the door steps",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: height * 0.55,
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            image: DecorationImage(
                                image: AssetImage('assets/images/img_3.png'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Welcome to Tracky",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Tracky is the best solution to deliver and track",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "goods from local and world shipping",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: selected == index
                                ? Colors.black
                                : Colors.grey.shade400,
                          ),
                        ))),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CommonBtn(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tab_Bar_2(),
                      ));
                },
                color: Color(0xffFD683D),
                text: "Create Account",
                textcolor: Colors.white,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide.none),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CommonBtn(
                onTap: () {},
                color: Colors.white,
                text: "Sign In as Guest",
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
