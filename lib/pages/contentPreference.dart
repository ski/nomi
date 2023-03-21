import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';

class contentPreference extends StatefulWidget {
  contentPreference({Key? key}) : super(key: key);

  static const String page_id = "Content Preference";

  @override
  State<contentPreference> createState() => _contentPreferenceState();
}

class _contentPreferenceState extends State<contentPreference> {
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
            'Content Preference',
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
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey.shade300),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Explore settings'),
            SizedBox(
              height: 20,
            ),
            Text('Search settings'),
            SizedBox(
              height: 30,
            ),
            Text(
              'Languages',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Prefered language',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'There are many variations of passages of Lorem Ipsum available',
                  style: TextStyle(color: Colors.black54),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Other language',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'There are many variations of passages of Lorem Ipsum available',
                  style: TextStyle(color: Colors.black54),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Safety',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Blocked accounts'),
            SizedBox(
              height: 20,
            ),
            Text('Muted accounts'),
          ],
        ),
      ),
    );
  }
}
