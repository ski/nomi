import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:nomi/helper/style.dart';
import 'package:nomi/pages/friendProfile.dart';
import 'package:nomi/pages/tweet.dart';

class trending extends StatefulWidget {
  trending({Key? key}) : super(key: key);

  static const String page_id = "Trending";

  @override
  State<trending> createState() => _trendingState();
}

class _trendingState extends State<trending> {
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                    print('Share Tapped');
                  }),
              SpeedDialChild(
                  child: Icon(Icons.gif_box_outlined),
                  label: 'Gif',
                  onTap: () {
                    print('Share Tapped');
                  }),
              SpeedDialChild(
                  child: Icon(Icons.photo_outlined),
                  label: 'Photos',
                  onTap: () {
                    print('Mail Tapped');
                  }),
              SpeedDialChild(
                  child: Icon(Icons.mic_outlined),
                  label: 'Spaces',
                  onTap: () {
                    print('Copy Tapped');
                  }),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(120),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(30)),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              hintText: '#HBDAjithkumar...',
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.segment),
              ),
              PopupMenuButton(
                  padding: EdgeInsets.all(0),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text(
                            'Share settings',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text(
                            'Save this search',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text(
                            'Share',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                          value: 1,
                        ),
                      ]),
            ],
          ),
        ],
        bottom: PreferredSize(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: const TabBar(
              labelColor: appColor,
              labelStyle: TextStyle(fontFamily: 'semibold'),
              unselectedLabelColor: Colors.black,
              labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 2.0, color: appColor),
              ),
              tabs: [
                Tab(
                  text: 'Top',
                ),
                Tab(
                  text: 'Latest',
                ),
                Tab(
                  text: 'People',
                ),
                Tab(
                  text: 'Photos',
                ),
                Tab(
                  text: 'Videos',
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(50.0),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      child: TabBarView(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                tweetContainer('assets/images/s2.jpg'),
                tweetContainer('assets/images/s1.jpg'),
                tweetContainer('assets/images/s5.jpg'),
                tweetContainer('assets/images/s4.jpg'),
                tweetContainer('assets/images/s2.jpg'),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                tweetContainer('assets/images/s2.jpg'),
                tweetContainer('assets/images/s1.jpg'),
                tweetContainer('assets/images/s5.jpg'),
                tweetContainer('assets/images/s4.jpg'),
                tweetContainer('assets/images/s2.jpg'),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                tweetContainer('assets/images/s2.jpg'),
                tweetContainer('assets/images/s1.jpg'),
                tweetContainer('assets/images/s5.jpg'),
                tweetContainer('assets/images/s4.jpg'),
                tweetContainer('assets/images/s2.jpg'),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                tweetContainer('assets/images/s2.jpg'),
                tweetContainer('assets/images/s1.jpg'),
                tweetContainer('assets/images/s5.jpg'),
                tweetContainer('assets/images/s4.jpg'),
                tweetContainer('assets/images/s2.jpg'),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                tweetContainer('assets/images/s2.jpg'),
                tweetContainer('assets/images/s1.jpg'),
                tweetContainer('assets/images/s5.jpg'),
                tweetContainer('assets/images/s4.jpg'),
                tweetContainer('assets/images/s2.jpg'),
              ],
            ),
          ),
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
}
