import 'package:delivery_app_figmaa/screens/Sign_up_page.dart';
import 'package:delivery_app_figmaa/screens/sign_in_page.dart';
import 'package:flutter/material.dart';

class Tab_Bar_2 extends StatefulWidget {
  const Tab_Bar_2({Key? key}) : super(key: key);

  @override
  State<Tab_Bar_2> createState() => _Tab_Bar_2State();
}

class _Tab_Bar_2State extends State<Tab_Bar_2>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  List tabItems = [
    "Sign Up",
    "Sign In",
  ];

  int tabSelected = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Shipping and Track Anytime",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Get great experience with tracky",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TabBar(
                    labelPadding: EdgeInsets.symmetric(horizontal: 5),
                    indicatorColor: Colors.transparent,
                    controller: tabController,
                    onTap: (value) {
                      setState(() {
                        tabSelected = value;
                      });
                    },
                    tabs: List.generate(
                      tabItems.length,
                      (index) => Container(
                        height: 48,
                        width: 200,
                        decoration: BoxDecoration(
                          color: tabSelected == index
                              ? Colors.white
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: Center(
                          child: Text(
                            tabItems[index],
                            style: TextStyle(
                              color: tabSelected == index
                                  ? Color(0xffFD683D)
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 550,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      SignUpPage(),
                      SignInPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
