import 'package:flutter/material.dart';
import 'package:nomi/helper/drawer.dart';
import 'package:nomi/helper/style.dart';
import 'package:nomi/pages/directMessages.dart';
import 'package:nomi/pages/messageScreen.dart';
import 'package:nomi/pages/newMessage.dart';

class inbox extends StatefulWidget {
  inbox({Key? key}) : super(key: key);

  static const String page_id = "Inbox";

  @override
  State<inbox> createState() => _inboxState();
}

class _inboxState extends State<inbox> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: AppDrawer(),
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      appBar: _buildAppbar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: appColor,
        child: Icon(Icons.mail_outline),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => newMessage()));
        },
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      leading: IconButton(
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        icon: Icon(Icons.account_circle_outlined),
      ),
      title: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            hintText: 'Search Direct Message',
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => directMessages()));
          },
          icon: Icon(Icons.settings_outlined),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            messageContainer(),
            messageContainer(),
            messageContainer(),
            messageContainer(),
            messageContainer(),
            messageContainer(),
            messageContainer(),
            messageContainer(),
            messageContainer(),
            messageContainer(),
            messageContainer(),
            messageContainer(),
          ],
        ),
      ),
    );
  }

  Widget messageContainer() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => messageScreen()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage('assets/images/s2.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Rahuljograna ',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'medium'),
                          ),
                          TextSpan(
                            text: ' @rahuljjograna',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Text('Lorem Ipsum is simply dummy text of the printing.'),
                  ],
                ),
              ),
            ),
            Text(
              '24/04/2022',
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
