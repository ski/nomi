import 'package:flutter/material.dart';
import 'package:nomi/pages/bookmarks.dart';
import 'package:nomi/pages/lists.dart';
import 'package:nomi/pages/moments.dart';
import 'package:nomi/pages/monetization.dart';
import 'package:nomi/pages/profile.dart';
import 'package:nomi/pages/settings.dart';
import 'package:nomi/pages/topics.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: _scaffoldKey,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage('assets/images/s1.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Alice Merryweather',
                                  style: TextStyle(
                                      fontFamily: 'semi-bold', fontSize: 16),
                                ),
                                Text(
                                  '@alice',
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '9  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'medium'),
                                ),
                                TextSpan(
                                  text: ' Following',
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '0  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'medium'),
                                ),
                                TextSpan(
                                  text: ' Followers',
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      drawerField(() {
                        _scaffoldKey.currentState?.openEndDrawer();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => profile()),
                        );
                      }, 'Profile', Icons.person_outline),
                      // drawerField(() {
                      //   _scaffoldKey.currentState?.openEndDrawer();
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => lists()),
                      //   );
                      // }, 'Lists', Icons.list_alt_outlined),
                      // drawerField(() {
                      //   _scaffoldKey.currentState?.openEndDrawer();
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => topics()),
                      //   );
                      // }, 'Topics', Icons.comment_outlined),
                      // drawerField(() {
                      //   _scaffoldKey.currentState?.openEndDrawer();
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => bookmarks()),
                      //   );
                      // }, 'Bookmarks', Icons.bookmark_outline),
                      // drawerField(() {
                      //   _scaffoldKey.currentState?.openEndDrawer();
                      //   Navigator.push(context,
                      //       MaterialPageRoute(builder: (context) => moments()));
                      // }, 'Moments', Icons.flash_on_outlined),
                      drawerField(() {
                        _scaffoldKey.currentState?.openEndDrawer();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => monetization()));
                      }, 'Monetization', Icons.monetization_on),
                    ],
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.all(16),
                //   decoration: BoxDecoration(
                //       border: Border(
                //     top: BorderSide(color: Colors.grey.shade300),
                //     bottom: BorderSide(color: Colors.grey.shade300),
                //   )),
                //   child: Row(
                //     children: [
                //       Icon(Icons.rocket_launch_outlined),
                //       Padding(
                //         padding: const EdgeInsets.only(left: 10),
                //         child: Text(
                //           'Twitter for Professionals',
                //           style: TextStyle(fontFamily: 'regular', fontSize: 16),
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => settings()));
                        },
                        child: Text(
                          'Settings and Privacy',
                          style: TextStyle(fontFamily: 'regular', fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Help Center',
                        style: TextStyle(fontFamily: 'regular', fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      border: Border(
                    top: BorderSide(color: Colors.grey.shade300),
                  )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.lightbulb_outline),
                      Icon(Icons.qr_code)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget drawerField(route, text, icon) {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    child: InkWell(
      onTap: route,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              text,
              style: TextStyle(fontFamily: 'regular', fontSize: 16),
            ),
          ),
        ],
      ),
    ),
  );
}
