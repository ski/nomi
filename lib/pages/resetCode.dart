import 'package:flutter/material.dart';
import 'package:nomi/pages/resetPassword.dart';

class resetCode extends StatefulWidget {
  resetCode({Key? key}) : super(key: key);

  static const String page_id = "Reset Code";

  @override
  State<resetCode> createState() => _resetCodeState();
}

class _resetCodeState extends State<resetCode> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(30),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text('Did\'t receive your code'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => resetPassword()));
                },
                child: Text(
                  'Verify',
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
                  'Check your phone',
                  style: TextStyle(fontFamily: 'medium', fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'You\'ll receive a code to verify here so you can reset your account password.',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Enter your code'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
