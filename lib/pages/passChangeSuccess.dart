import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';
import 'package:nomi/pages/tabs.dart';

class passChangeSuccess extends StatefulWidget {
  passChangeSuccess({Key? key}) : super(key: key);

  static const String page_id = "Password Change Successfully";

  @override
  State<passChangeSuccess> createState() => _passChangeSuccessState();
}

class _passChangeSuccessState extends State<passChangeSuccess> {
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
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You\'re all set. You\'ve successfully changed your password.',
            style: TextStyle(fontFamily: 'medium', fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Review your applications',
            style: TextStyle(color: appColor),
          ),
          Text(
            'Tack a moment to review the applications that have access to your account. Revoke those you don\'t recognise or no longer use.',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Make your Password more secure',
            style: TextStyle(color: appColor),
          ),
          Text(
            'Require my phone number or email to reset my password.',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => tabs()));
            },
            child: Text(
              'Continue to Twitter',
              style: TextStyle(fontFamily: 'semi-bold'),
            ),
            style: appButton(),
          ),
        ],
      ),
    );
  }
}
