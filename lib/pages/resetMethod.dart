import 'package:flutter/material.dart';
import 'package:nomi/pages/resetCode.dart';

class resetMethod extends StatefulWidget {
  resetMethod({Key? key}) : super(key: key);

  static const String page_id = "Reset Method";

  @override
  State<resetMethod> createState() => _resetMethodState();
}

class _resetMethodState extends State<resetMethod> {
  bool value = false;

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
                child: Text('Cancel'),
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
                      MaterialPageRoute(builder: (context) => resetCode()));
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
                  'How do you want to reset your password?',
                  style: TextStyle(fontFamily: 'medium', fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'We found the following information associated with your account.',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          'Text a conformation code to my phone ending in 11'),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Checkbox(
                      shape: CircleBorder(),
                      value: this.value,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
