import 'package:delivery_app_figmaa/common_item/common_btn.dart';
import 'package:delivery_app_figmaa/common_item/common_textfield.dart';
import 'package:delivery_app_figmaa/screens/otp_screen.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  int selected = 0;
  bool tapselected = true;
  final formkey = GlobalKey<FormState>();

  final phoneNo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Phone Number",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                CommonTextField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Phone No can not be entered";
                    }
                  },
                  controller: phoneNo,
                  onChanged: (value) {
                    setState(() {});
                  },
                  ontap: () {
                    setState(() {
                      selected = 1;
                    });
                  },
                  prefixIcon: Icon(
                    Icons.call_outlined,
                    color: selected == 1 ? Color(0xffFD683D) : Colors.grey,
                  ),
                  suffixIcon: phoneNo.text.length == 10
                      ? Icon(
                          Icons.check_circle,
                          color: Colors.black,
                        )
                      : SizedBox(),
                  keyboardType: TextInputType.number,
                  hintText: "Enter your number",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black, width: 1)),
                  maxLength: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                CommonTextField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password can not be entered";
                    }
                  },
                  ontap: () {
                    setState(() {
                      selected = 1;
                    });
                  },
                  suffixIcon: tapselected == true
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              tapselected = !tapselected;
                            });
                          },
                          icon: Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          ))
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              tapselected = !tapselected;
                            });
                          },
                          icon: Icon(
                            Icons.visibility_off,
                            color: Colors.black,
                          )),
                  prefixIcon: Icon(
                    Icons.lock_outlined,
                    color: selected == 1 ? Color(0xffFD683D) : Colors.grey,
                  ),
                  hintText: "Enter your password",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black, width: 1)),
                  obscure: tapselected,
                ),
                SizedBox(
                  height: 20,
                ),
                CommonBtn(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      print("Validate");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpScreen(),
                          ));
                    }
                  },
                  color: Color(0xffFD683D),
                  text: "Create Account",
                  textcolor: Colors.white,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 1.8,
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Or Sign Up With",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: height * 0.07,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: Image(
                        image: AssetImage('assets/images/img_4.png'),
                        height: height * 0.07,
                        width: width * 0.07,
                      )),
                      SizedBox(
                        width: 15,
                      ),
                      Center(
                        child: Text(
                          "Sign Up with Google",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: height * 0.07,
                  width: width,
                  decoration: BoxDecoration(
                      color: Color(0xffFD683D),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: Image(
                        image: AssetImage('assets/images/img_5.png'),
                        height: height * 0.06,
                        width: width * 0.06,
                      )),
                      SizedBox(
                        width: 15,
                      ),
                      Center(
                        child: Text(
                          "Sign Up with Apple",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
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
