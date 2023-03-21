import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:nomi/helper/drawer.dart';
import 'package:nomi/helper/style.dart';
import 'package:nomi/pages/newTweet.dart';
import 'package:nomi/pages/notificationList.dart';

class notifications extends StatefulWidget {
  notifications({Key? key}) : super(key: key);

  static const String page_id = "Notifications";

  @override
  State<notifications> createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  int tabID = 1;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
        title: Text(
          'Notifications',
          style: TextStyle(
              fontFamily: 'medium', fontSize: 18, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => notificationList()));
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
              labelColor: appColor,
              labelStyle: TextStyle(fontFamily: 'semibold'),
              unselectedLabelColor: Colors.black,
              labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 2.0, color: appColor),
              ),
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Mentions',
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
                messageContainer(),
                messageContainer(),
                messageContainer(),
                messageContainer(),
                messageContainer(),
                messageContainer(),
                messageContainer(),
                messageContainer(),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                messageContainer(),
                messageContainer(),
                messageContainer(),
                messageContainer(),
                messageContainer(),
                messageContainer(),
                messageContainer(),
                messageContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget messageContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage('assets/images/s4.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Rahuljograna ',
                              style: TextStyle(
                                  color: Colors.black, fontFamily: 'medium'),
                            ),
                            TextSpan(
                              text: ' @alice 17/08/2022',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Text(
                          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.'),
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
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.import_export,
                              color: Colors.black54,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_outline,
                              color: Colors.black54,
                            ),
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
              Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget _buildSegment() {
  //   return Container(
  //     margin: EdgeInsets.only(top: 20),
  //     child: SingleChildScrollView(
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: [
  //           Expanded(
  //             child: InkWell(
  //               onTap: () {
  //                 setState(() {
  //                   tabID = 1;
  //                 });
  //               },
  //               child: Container(
  //                 padding: EdgeInsets.only(bottom: 5),
  //                 decoration: segmentDecoration(1),
  //                 child: Text(
  //                   'All',
  //                   style: segmentText(1),
  //                   textAlign: TextAlign.center,
  //                 ),
  //               ),
  //             ),
  //           ),
  //           Expanded(
  //             child: InkWell(
  //                 onTap: () {
  //                   setState(() {
  //                     tabID = 2;
  //                   });
  //                 },
  //                 child: Container(
  //                     padding: EdgeInsets.only(bottom: 5),
  //                     decoration: segmentDecoration(2),
  //                     child: Text(
  //                       'Mentions',
  //                       style: segmentText(2),
  //                       textAlign: TextAlign.center,
  //                     ))),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  segmentDecoration(val) {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 2,
                color: tabID == val ? appColor : Colors.transparent)));
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: tabID == val ? 'semi-bold' : 'medium',
        fontSize: 16,
        color: tabID == val ? Colors.black : Colors.grey);
  }
}
