import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';
import 'package:nomi/pages/sigunup.dart';

class registerTerm extends StatefulWidget {
  registerTerm({Key? key}) : super(key: key);

  static const String page_id = "Register Term";

  @override
  State<registerTerm> createState() => _registerTermState();
}

class _registerTermState extends State<registerTerm> {
  bool value = true;

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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signup()));
                },
                child: Text(
                  'Next',
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
                  'Customiza your experience',
                  style: TextStyle(fontFamily: 'medium', fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Track whrer you see Twiter content across the web',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Twitter uses this data to personalize your experience. This web browsing history will never be stored with your name, email, or phone number.',
                        style: TextStyle(fontFamily: 'medium', fontSize: 16),
                      ),
                    ),
                    Checkbox(
                      value: this.value,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
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
                        text: ' Terms ',
                        style: TextStyle(
                            color: appColor,
                            fontFamily: 'regular',
                            fontSize: 12),
                      ),
                      TextSpan(
                        text: ' Privacy policy,and ',
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
                            ' Twitter may use your contact information, inclufding your email address and phone number for purpose of outline in our Privacy Policy.',
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
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
