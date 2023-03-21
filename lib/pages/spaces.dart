import 'package:flutter/material.dart';
import 'package:nomi/helper/drawer.dart';
import 'package:nomi/helper/style.dart';

class spaces extends StatefulWidget {
  spaces({Key? key}) : super(key: key);

  static const String page_id = "Spaces";

  @override
  State<spaces> createState() => _spacesState();
}

class _spacesState extends State<spaces> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: AppDrawer(),
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      appBar: _buildAppbar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: appColor,
        child: Icon(Icons.mic_outlined),
        onPressed: () {},
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      leading: IconButton(
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        icon: Icon(Icons.account_circle_outlined),
      ),
      title: Text(
        'Spaces',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 18, color: Colors.black),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get these in your calender',
                  style: headText(),
                ),
                Text(
                  'People you follow will be tuning in',
                  style: TextStyle(color: Colors.black54),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            spaceContainer(Colors.orangeAccent.shade400, Colors.orangeAccent),
            spaceContainer(Colors.redAccent.shade400, Colors.redAccent),
            spaceContainer(Colors.green.shade400, Colors.green),
            spaceContainer(Colors.blue.shade400, Colors.blue),
            spaceContainer(Colors.brown.shade400, Colors.brown),
          ],
        ),
      ),
    );
  }

  Widget spaceContainer(color1, color2) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: color1,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Tomorrow at 1:00 AM',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'NFT Thursday x PAPER DAO',
                  style: TextStyle(
                    fontFamily: 'semi-bold',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Technology',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
              color: color2,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage('assets/images/s2.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Google Cloud tech',
                      style: TextStyle(
                        fontFamily: 'medium',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Host',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'There are many variations of passages of Lorem Ipsum available',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
