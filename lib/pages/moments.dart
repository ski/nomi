import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';

class moments extends StatefulWidget {
  moments({Key? key}) : super(key: key);

  static const String page_id = "Moments";

  @override
  State<moments> createState() => _momentsState();
}

class _momentsState extends State<moments> {
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
      title: Text(
        'Moments',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 18, color: Colors.black),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'waiting on a Moment',
            style: headText(),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'To Create or edit Moment, please go to Twitter.com',
            style: TextStyle(color: Colors.black54),
          )
        ],
      ),
    );
  }
}
