import 'package:delivery_app_figmaa/common_item/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List iconn = [
    Icon(Icons.rate_review),
    Icon(Icons.pin_drop),
    Icon(Icons.outbox),
    Icon(Icons.help_center_rounded),
    Icon(Icons.wallet_giftcard),
    Icon(Icons.grid_view),
  ];
  List textt = [
    "Check rates",
    "Nearby Drop",
    "Order",
    "Help Center",
    "wallet",
    "others",
  ];
  List textt2 = [
    "MM09132005",
    "MA84561259",
    "FU84593276",
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: width,
              decoration: BoxDecoration(color: Color(0xff212B33)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/img_7.png'),
                          height: height * 0.08,
                          width: width * 0.08,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Catchy",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        Spacer(),
                        Container(
                          height: height * 0.08,
                          width: width * 0.08,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white)),
                          child: Icon(Icons.notifications_none,
                              color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: height * 0.10,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "My Balance",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15.5),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "\$3.382.00",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 22),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Text(
                                  "Top Up",
                                  style: TextStyle(fontSize: 17),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(Icons.add_box_rounded)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CommonTextField(
                      filled: true,
                      fillcolor: Color(0xffFD683D),
                      prefixIcon: Icon(Icons.search),
                      hintText: "Enter track number",
                      suffixIcon: Icon(Icons.qr_code_scanner),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Features",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: height * 0.27,
                    child: GridView.builder(
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 100),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textt[index],
                                ),
                              ]),
                        );
                      },
                    ),
                  ),
                  Text(
                    "Services and Procuct",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: height * 0.28,
                    width: width,
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          child: Container(
                            height: 90,
                            width: width,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey.shade200,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                title: Text(
                                  textt2[index],
                                  style: TextStyle(fontSize: 20),
                                ),
                                subtitle: Text(
                                  "Processed at sort facility",
                                  style: TextStyle(fontSize: 15),
                                ),
                                trailing: Text(
                                  "2 Hrs",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
