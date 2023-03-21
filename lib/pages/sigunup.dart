import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';
import 'package:nomi/pages/tabs.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  static const String page_id = "Signup";

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.close),
      ),
      title: Container(
        child: Image.asset(
          'assets/images/twitter.png',
          height: 30,
          width: 30,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create your account',
                  style: TextStyle(fontFamily: 'medium', fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Alice Merryweather',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: '+91 9091234567',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Date of birth',
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'By signing up, you agree to our ',
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'regular',
                            fontSize: 12),
                      ),
                      TextSpan(
                        text: ' Terms of service ',
                        style: TextStyle(
                            color: appColor,
                            fontFamily: 'regular',
                            fontSize: 12),
                      ),
                      TextSpan(
                        text: ' and Privacy policy including ',
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'regular',
                            fontSize: 12),
                      ),
                      TextSpan(
                        text: ' Cookie use. ',
                        style: TextStyle(
                            color: appColor,
                            fontFamily: 'regular',
                            fontSize: 12),
                      ),
                      TextSpan(
                        text:
                            ' Twitter may use your contact information, inclufding your email address and phone number for purpose of outline in our Privacy Policy like keeping your account secure and personalizing our service, including ads.',
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'regular',
                            fontSize: 12),
                      ),
                      TextSpan(
                        text: ' Learn more ',
                        style: TextStyle(
                            color: appColor,
                            fontFamily: 'regular',
                            fontSize: 12),
                      ),
                      TextSpan(
                        text:
                            ' Others will be able to find you by email or phone number, when provided, unless you choose otherwise.',
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'regular',
                            fontSize: 12),
                      ),
                      TextSpan(
                        text: ' here.',
                        style: TextStyle(
                            color: appColor,
                            fontFamily: 'regular',
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => tabs()));
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontFamily: 'semi-bold'),
                  ),
                  style: appButton(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
