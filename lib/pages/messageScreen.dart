import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';
import 'package:nomi/pages/conversationInfo.dart';

class messageScreen extends StatefulWidget {
  messageScreen({Key? key}) : super(key: key);

  static const String page_id = "Message Screen";

  @override
  State<messageScreen> createState() => _messageScreenState();
}

class _messageScreenState extends State<messageScreen> {
  List<Item> messages = <Item>[
    Item('left', 'Hey there! What\'s up>?'),
    Item(
        'right', 'Nothing. Just chilling and watching youtube What about you?'),
    Item('left', 'Same here! Been watching youtube for last 5 hours'),
    Item('right', 'Yeah i know. I am in same position'),
    Item('left', 'It\'s hard to be productive man '),
    Item('right', 'Sure thankyou'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildbottomNavigationBar(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'Alice Merryweather',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 16, color: Colors.black),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => conversationInfo()));
          },
          icon: Icon(Icons.info_outline),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: messages.map((Item msg) {
          return msg.side == 'left'
              ? Container(
                  margin: EdgeInsets.only(bottom: 16),
                  width: MediaQuery.of(context).size.width - 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/s4.jpg'),
                        radius: 20,
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      bottomLeft: Radius.circular(30))),
                              child: Text(
                                msg.msg,
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8, left: 8),
                              child: Text(
                                '10:30 AM',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 16),
                          width: MediaQuery.of(context).size.width - 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 15),
                                      decoration: BoxDecoration(
                                          color: appColor,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                            bottomLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30),
                                          )),
                                      child: Text(
                                        msg.msg,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 8, right: 8),
                                      child: Text(
                                        '10:30 AM',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
        }).toList(),
      ),
    );
  }

  Widget _buildbottomNavigationBar() {
    return SingleChildScrollView(
      reverse: true,
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Colors.white,
        ),
        child: Row(
          children: <Widget>[
            InkWell(
              child: Container(
                height: 35,
                width: 35,
                child: Icon(
                  Icons.face,
                  color: Colors.grey,
                ),
              ),
            ),
            InkWell(
              child: Container(
                height: 35,
                width: 35,
                child: Icon(
                  Icons.attach_file,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Message...'),
              ),
            ),
            InkWell(
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: appColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    )),
                child: Icon(
                  Icons.near_me,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
    );
  }
}

class Item {
  const Item(this.side, this.msg);
  final String side;
  final String msg;
}
