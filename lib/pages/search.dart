import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:nomi/helper/drawer.dart';
import 'package:nomi/helper/style.dart';
import 'package:nomi/pages/exploreSetting.dart';
import 'package:nomi/pages/newTweet.dart';
import 'package:nomi/pages/trending.dart';
import 'package:nomi/pages/tweet.dart';

class search extends StatefulWidget {
  search({Key? key}) : super(key: key);

  static const String page_id = "Search";

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  int tabID = 1;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: AppDrawer(),
        key: _scaffoldKey,
        drawerEnableOpenDragGesture: false,
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
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(120),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          icon: Icon(Icons.account_circle_outlined),
        ),
        title: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(30)),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              hintText: 'Search Tweeter',
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => exploreSetting()));
            },
            icon: Icon(Icons.settings_outlined),
          ),
        ],
        bottom: PreferredSize(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: const TabBar(
              isScrollable: true,
              labelColor: appColor,
              labelStyle: TextStyle(fontFamily: 'semibold'),
              unselectedLabelColor: Colors.black,
              labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 2.0, color: appColor),
              ),
              tabs: [
                Tab(
                  text: 'For you',
                ),
                Tab(
                  text: 'NBA',
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
                tweetContainer(),
                trendContainer(),
                trendContainer(),
                tweetContainer(),
                trendContainer(),
                tweetContainer(),
                trendContainer(),
                tweetContainer(),
                tweetContainer(),
                tweetContainer(),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                trendContainer(),
                tweetContainer(),
                tweetContainer(),
                tweetContainer(),
                tweetContainer(),
                trendContainer(),
                tweetContainer(),
                tweetContainer(),
                trendContainer(),
                tweetContainer(),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                tweetContainer(),
                trendContainer(),
                tweetContainer(),
                tweetContainer(),
                trendContainer(),
                tweetContainer(),
                tweetContainer(),
                trendContainer(),
                tweetContainer(),
                tweetContainer(),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                tweetContainer(),
                tweetContainer(),
                trendContainer(),
                tweetContainer(),
                tweetContainer(),
                trendContainer(),
                tweetContainer(),
                trendContainer(),
                tweetContainer(),
                tweetContainer(),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                trendContainer(),
                trendContainer(),
                tweetContainer(),
                tweetContainer(),
                tweetContainer(),
                trendContainer(),
                tweetContainer(),
                tweetContainer(),
                tweetContainer(),
                tweetContainer(),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                trendContainer(),
                tweetContainer(),
                tweetContainer(),
                trendContainer(),
                trendContainer(),
                tweetContainer(),
                tweetContainer(),
                tweetContainer(),
                tweetContainer(),
                tweetContainer(),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                tweetContainer(),
                trendContainer(),
                tweetContainer(),
                tweetContainer(),
                tweetContainer(),
                trendContainer(),
                tweetContainer(),
                tweetContainer(),
                tweetContainer(),
                tweetContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget tweetContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only(bottom: 20, top: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => tweet()));
        },
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'COVID-19 • LIVE',
                    style:
                        TextStyle(color: Colors.black54, fontFamily: 'medium'),
                  ),
                  Text('Surge in COVID-19 cases continus acros the country')
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/s4.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget trendContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => trending()));
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sports • Trending',
                    style:
                        TextStyle(color: Colors.black54, fontFamily: 'medium'),
                  ),
                  Text(
                    'Alice Merryweather',
                    style: TextStyle(fontFamily: 'medium', fontSize: 16),
                  ),
                  Text(
                    '21.5K Tweets',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
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
                      heightFactor: 0.2,
                      child: bottomContainer(),
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
        ),
      ),
    );
  }

  Widget bottomContainer() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Not interested in this',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'This trend is harmful or spammy',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
