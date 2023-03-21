import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';

class friendProfile extends StatefulWidget {
  friendProfile({Key? key}) : super(key: key);

  static const String page_id = "Friend Profile";

  @override
  State<friendProfile> createState() => _friendProfileState();
}

class _friendProfileState extends State<friendProfile> {
  int tabID = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppbar(),
        body: _buildBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: appColor,
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(120),
      child: AppBar(
          elevation: 0,
          backgroundColor: appColor,
          automaticallyImplyLeading: false,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(100)),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          actions: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black45,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black45,
                  child: PopupMenuButton(
                      padding: EdgeInsets.all(0),
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text(
                                'Share',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                              value: 1,
                            ),
                            PopupMenuItem(
                              child: Text(
                                'View Topics',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                              value: 1,
                            ),
                            PopupMenuItem(
                              child: Text(
                                'Add/remove from lists',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                              value: 1,
                            ),
                            PopupMenuItem(
                              child: Text(
                                'View Lists',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                              value: 1,
                            ),
                            PopupMenuItem(
                              child: Text(
                                'Lists they\'re on',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                              value: 1,
                            ),
                            PopupMenuItem(
                              child: Text(
                                'View Moments',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                              value: 1,
                            ),
                            PopupMenuItem(
                              child: Text(
                                'Mute',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                              value: 1,
                            ),
                            PopupMenuItem(
                              child: Text(
                                'Block',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                              value: 1,
                            ),
                            PopupMenuItem(
                              child: Text(
                                'Reports',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                              value: 1,
                            ),
                          ]),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
          flexibleSpace: Stack(
            children: [
              Positioned(
                bottom: -30,
                left: 20,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage('assets/images/s2.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(Icons.mail_outline),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'Follow',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'alice',
                  style: TextStyle(fontFamily: 'semi-bold', fontSize: 18),
                ),
                Text(
                  '@alice',
                  style:
                      TextStyle(fontFamily: 'regular', color: Colors.black54),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.black54,
                    ),
                    Text('Joined September 2021'),
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
                            text: '900  ',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'medium'),
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
                            text: '4820  ',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'medium'),
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
                  text: 'Tweets',
                ),
                Tab(
                  text: 'Tweets & replies',
                ),
                Tab(
                  text: 'Media',
                ),
                Tab(
                  text: 'Likes',
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                rplyContainer(),
                rplyContainer(),
                rplyContainer(),
                rplyContainer(),
                rplyContainer(),
                rplyContainer(),
                rplyContainer(),
              ],
            ),
          )
        ],
      ),
    );
  }

  // Widget _buildSegment() {
  //   return Container(
  //     margin: EdgeInsets.only(top: 20),
  //     child: SingleChildScrollView(
  //       // scrollDirection: Axis.horizontal,
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: [
  //           InkWell(
  //             onTap: () {
  //               setState(() {
  //                 tabID = 1;
  //               });
  //             },
  //             child: Container(
  //               padding: EdgeInsets.only(bottom: 5),
  //               decoration: segmentDecoration(1),
  //               child: Text(
  //                 'Tweets',
  //                 style: segmentText(1),
  //                 textAlign: TextAlign.center,
  //               ),
  //             ),
  //           ),
  //           InkWell(
  //               onTap: () {
  //                 setState(() {
  //                   tabID = 2;
  //                 });
  //               },
  //               child: Container(
  //                   padding: EdgeInsets.only(bottom: 5),
  //                   decoration: segmentDecoration(2),
  //                   child: Text(
  //                     'Tweets & replies',
  //                     style: segmentText(2),
  //                     textAlign: TextAlign.center,
  //                   ))),
  //           InkWell(
  //               onTap: () {
  //                 setState(() {
  //                   tabID = 3;
  //                 });
  //               },
  //               child: Container(
  //                   padding: EdgeInsets.only(bottom: 5),
  //                   decoration: segmentDecoration(3),
  //                   child: Text(
  //                     'Media',
  //                     style: segmentText(3),
  //                     textAlign: TextAlign.center,
  //                   ))),
  //           InkWell(
  //             onTap: () {
  //               setState(() {
  //                 tabID = 4;
  //               });
  //             },
  //             child: Container(
  //               padding: EdgeInsets.only(bottom: 5),
  //               decoration: segmentDecoration(4),
  //               child: Text(
  //                 'Likes',
  //                 style: segmentText(4),
  //                 textAlign: TextAlign.center,
  //               ),
  //             ),
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

  Widget rplyContainer() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
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
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage('assets/images/s4.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Hardik Gohil ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'medium',
                                  fontSize: 16),
                            ),
                            TextSpan(
                              text: ' @hardikrajput • 10h',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'There are many variations of passages of Lorem Ipsum available, but the majority have suffered '),
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
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
