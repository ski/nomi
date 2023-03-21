import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  settings({Key? key}) : super(key: key);

  static const String page_id = "Settings";

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
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
            'Settings',
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
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade200),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  hintText: 'Search Tweeter',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            settinglist(Icons.person_outline, 'Your Account'),
            settinglist(Icons.lock_outline, 'Security and Account access'),
            settinglist(Icons.monetization_on_outlined, 'Monetization'),
            settinglist(Icons.privacy_tip_outlined, 'Privacy and safety'),
            settinglist(Icons.notifications_outlined, 'Notifications'),
            settinglist(Icons.accessibility_rounded,
                'Accessibility,display and languages'),
            settinglist(Icons.more_horiz_rounded, 'Additional resources'),
            Row(
              children: [
                Icon(
                  Icons.visibility_outlined,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Proy',
                  style: TextStyle(fontFamily: 'medium'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget settinglist(icon, head) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black54,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    head,
                    style: TextStyle(fontFamily: 'medium'),
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
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
