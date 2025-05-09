import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(40))),
                      context: context,
                      builder: (context) => Container(
                            height: 500,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(40)),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: Divider(
                                    thickness: 3,
                                    color: Colors.black54,
                                  ),
                                )
                              ],
                            ),
                          ));
                },
                child: Text(
                  "show bottom sheet",
                ))
          ],
        ),
      ),
    );
  }
}
