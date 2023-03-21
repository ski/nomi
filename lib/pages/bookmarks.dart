import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';

class bookmarks extends StatefulWidget {
  bookmarks({Key? key}) : super(key: key);

  static const String page_id = "Bookmarks";

  @override
  State<bookmarks> createState() => _bookmarksState();
}

class _bookmarksState extends State<bookmarks> {
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
        'Bookmarks',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 18, color: Colors.black),
      ),
      actions: [
        PopupMenuButton(
          padding: EdgeInsets.all(0),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text(
                'Clear all Bookmarks',
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              value: 1,
            ),
          ],
        )
      ],
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
            'Save Tweets for later',
            style: headText(),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Don\'t let the good ones fly away! Bookmark Tweets to easily find them again in the future',
            style: TextStyle(color: Colors.black54),
          )
        ],
      ),
    );
  }
}
