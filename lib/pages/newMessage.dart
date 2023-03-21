import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';

class newMessage extends StatefulWidget {
  newMessage({Key? key}) : super(key: key);

  static const String page_id = "New Message";

  @override
  State<newMessage> createState() => _newMessageState();
}

class _newMessageState extends State<newMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(120),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'New message',
          style: TextStyle(
              fontFamily: 'medium', fontSize: 18, color: Colors.black),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey.shade300),
              bottom: BorderSide(color: Colors.grey.shade300),
            ),
          ),
          margin: EdgeInsets.only(top: 80),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                hintText: 'Search for people and groups',
                prefixIcon: Icon(Icons.search)),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            friendList(),
            friendList(),
            friendList(),
            friendList(),
            friendList(),
            friendList(),
            friendList(),
            friendList(),
            friendList(),
            friendList(),
            friendList(),
            friendList(),
            friendList(),
            friendList(),
            friendList(),
          ],
        ),
      ),
    );
  }

  Widget friendList() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                  image: AssetImage('assets/images/s2.jpg'), fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alice Merryweather',
                    style: headText(),
                  ),
                  Text(
                    '@alice',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
