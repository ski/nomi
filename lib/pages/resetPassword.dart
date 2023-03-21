import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';
import 'package:nomi/pages/passChangeSuccess.dart';

class resetPassword extends StatefulWidget {
  resetPassword({Key? key}) : super(key: key);

  static const String page_id = "Reset Password";

  @override
  State<resetPassword> createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey.shade300))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => passChangeSuccess()));
                },
                child: Text(
                  'Reset Password',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reset your password',
                  style: TextStyle(fontFamily: 'medium', fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Strong password include numbers, letters, and punctuation marks.',
                  style: TextStyle(color: Colors.grey),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Resetting your password will log you out of all your active Twitter sessions.',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextSpan(
                        text: ' Learn more',
                        style: TextStyle(color: appColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Enter your New Password',
                      suffixIcon: Icon(Icons.visibility_outlined)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Enter your Password one more time',
                      suffixIcon: Icon(Icons.visibility_outlined)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
