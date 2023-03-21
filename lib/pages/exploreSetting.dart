import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';

class exploreSetting extends StatefulWidget {
  exploreSetting({Key? key}) : super(key: key);

  static const String page_id = "Explore Settings";

  @override
  State<exploreSetting> createState() => _exploreSettingState();
}

class _exploreSettingState extends State<exploreSetting> {
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
            'Explore Settings',
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Location',
            style: headText(),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Show Content in this location',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'There are many variations of passages of Lorem Ipsum available',
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
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
          )
        ],
      ),
    );
  }
}
