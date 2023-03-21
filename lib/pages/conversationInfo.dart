import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';

class conversationInfo extends StatefulWidget {
  conversationInfo({Key? key}) : super(key: key);

  static const String page_id = "Conversation Info";

  @override
  State<conversationInfo> createState() => _conversationInfoState();
}

class _conversationInfoState extends State<conversationInfo> {
  bool _switchValue = true;
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
      title: Text(
        'Conversation info',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 16, color: Colors.black),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage('assets/images/s2.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  'Rahul Jograna',
                  style: TextStyle(fontFamily: 'medium', fontSize: 18),
                ),
                Text(
                  '@rahuljJograna',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey.shade300),
              bottom: BorderSide(color: Colors.grey.shade300),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Notifications',
                style: headText(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Snooze Notification'),
                  Transform.scale(
                    scale: 0.7,
                    child: CupertinoSwitch(
                      activeColor: appColor,
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Column(
            children: [
              Text(
                'Block @rahuljJograna',
                style: TextStyle(
                    color: appColor, fontFamily: 'medium', fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Report @rahuljJograna',
                style: TextStyle(
                    color: appColor, fontFamily: 'medium', fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Delete Conversation',
                style: TextStyle(
                    color: Colors.red, fontFamily: 'medium', fontSize: 16),
              ),
            ],
          ),
        )
      ],
    );
  }
}
