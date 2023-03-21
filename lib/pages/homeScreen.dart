import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:nomi/helper/drawer.dart';
import 'package:nomi/helper/style.dart';
import 'package:nomi/pages/contentPreference.dart';
import 'package:nomi/pages/friendProfile.dart';
import 'package:nomi/pages/newTweet.dart';
import 'package:nomi/pages/tabs.dart';
import 'package:nomi/pages/tweet.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  static const String page_id = "Home Screen";

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int tabID = 1;

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isDialOpen = ValueNotifier(false);
    return Scaffold(
      drawer: AppDrawer(),
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      floatingActionButton: WillPopScope(
        onWillPop: () async {
          if (isDialOpen.value) {
            isDialOpen.value = false;
            return false;
          } else {
            return true;
          }
        },
        child: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          openCloseDial: isDialOpen,
          backgroundColor: appColor,
          overlayColor: Colors.grey,
          overlayOpacity: 0.5,
          spacing: 15,
          spaceBetweenChildren: 15,
          closeManually: true,
          children: [
            SpeedDialChild(
                child: Icon(Icons.add),
                label: 'Tweet',
                onTap: () {
                  isDialOpen.value = false;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => newTweet()));
                }),
            SpeedDialChild(
                child: Icon(Icons.gif_box_outlined),
                label: 'Gif',
                onTap: () {
                  isDialOpen.value = false;
                  print('Share Tapped');
                }),
            SpeedDialChild(
                child: Icon(Icons.photo_outlined),
                label: 'Photos',
                onTap: () {
                  isDialOpen.value = false;
                  print('Mail Tapped');
                }),
            SpeedDialChild(
              child: Icon(Icons.mic_outlined),
              label: 'Spaces',
              onTap: () {
                isDialOpen.value = false;
                print('Copy Tapped');
              },
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      leading: IconButton(
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        icon: Icon(Icons.account_circle_outlined),
      ),
      title: Image.asset(
        'assets/images/twitter.png',
        height: 30,
        width: 30,
        fit: BoxFit.cover,
      ),
      actions: [
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return FractionallySizedBox(
                  heightFactor: 0.35,
                  child: timelineContainer(),
                );
              },
            );
          },
          icon: Icon(Icons.auto_awesome_outlined),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tweetContainer('assets/images/s2.jpg'),
          tweetContainer('assets/images/s1.jpg'),
          tweetContainer('assets/images/s5.jpg'),
          tweetContainer('assets/images/s4.jpg'),
          tweetContainer('assets/images/s2.jpg'),
        ],
      ),
    );
  }

  Widget tweetContainer(image) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => tweet()));
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage('assets/images/s2.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => friendProfile()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'alice',
                                style: TextStyle(
                                    fontFamily: 'medium', fontSize: 16),
                              ),
                              Text(
                                '@alice • 1h',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Text('Follow'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (BuildContext context) {
                                    return FractionallySizedBox(
                                      heightFactor: 0.35,
                                      child: detailContainer(),
                                    );
                                  },
                                );
                              },
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '#neverforgiven',
                      style: TextStyle(color: appColor),
                    ),
                    Container(
                      height: 250,
                      // width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.comment_outlined,
                            color: Colors.black54,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.import_export,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              '8',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_outline,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              '8',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget detailContainer() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.person_add_outlined,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Follow @alice',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.list_alt_outlined,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Add/remove from Lists',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.volume_off_outlined,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Mute @alice',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.block_outlined,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Block @alice',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.flag_outlined,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Report Tweet',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget timelineContainer() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/timeline.png',
                height: 30,
                width: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Your timeline shows the latest Tweets',
              style: TextStyle(fontFamily: 'medium', fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => tabs(),
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.swap_horiz,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Switch to Home',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Home Tweets are recommened for you',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => contentPreference(),
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.settings_outlined,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'View content preference',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
