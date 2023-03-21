import 'package:flutter/material.dart';

class notificationList extends StatefulWidget {
  notificationList({Key? key}) : super(key: key);

  static const String page_id = "Notification List";

  @override
  State<notificationList> createState() => _notificationListState();
}

class _notificationListState extends State<notificationList> {
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
            'Notifications',
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
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ',
            style: TextStyle(color: Colors.black54),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.segment,
                color: Colors.black54,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Filters',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                      Text(
                        'Choose the notifications you\'d to see and those you don\'t.',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.phone_iphone_sharp,
                color: Colors.black54,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'preferences',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                      Text(
                        'Select your preferences by notification type.',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
