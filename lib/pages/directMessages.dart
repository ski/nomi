import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';

class directMessages extends StatefulWidget {
  directMessages({Key? key}) : super(key: key);

  static const String page_id = "Direct Messages";

  @override
  State<directMessages> createState() => _directMessagesState();
}

class _directMessagesState extends State<directMessages> {
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
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Direct Settings',
            style: TextStyle(
                fontFamily: 'medium', fontSize: 18, color: Colors.black),
          ),
          Text(
            '@alice',
            style: TextStyle(color: Colors.black54, fontSize: 14),
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Allow message requests from everyone',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Let people who you don\'t follow send you message request and add you to group conversation. To apply to their messages,you need to request.',
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Transform.scale(
                scale: 0.8,
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
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Show read receipts',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Let people who you don\'t follow send you message request and add you to group conversation. To apply to their messages,you need to request.',
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Transform.scale(
                scale: 0.8,
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
          ),
        ],
      ),
    );
  }
}
