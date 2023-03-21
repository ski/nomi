import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';

class newTweet extends StatefulWidget {
  newTweet({Key? key}) : super(key: key);

  static const String page_id = "New Tweet";

  @override
  State<newTweet> createState() => _newTweetState();
}

class _newTweetState extends State<newTweet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: _buildbottomNavigationBar(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.close),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: appColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Tweet',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                  image: AssetImage('assets/images/s2.jpg'), fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildbottomNavigationBar() {
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey.shade300),
              ),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.language_outlined,
                  color: appColor,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Everyone can reply',
                  style: TextStyle(color: appColor),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey.shade300),
              ),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        height: 35,
                        width: 35,
                        child: Icon(
                          Icons.image_outlined,
                          color: appColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      child: Container(
                        height: 35,
                        width: 35,
                        child: Icon(
                          Icons.gif_box_outlined,
                          color: appColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      child: Container(
                        height: 35,
                        width: 35,
                        child: Icon(
                          Icons.bar_chart,
                          color: appColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      child: Container(
                        height: 35,
                        width: 35,
                        child: Icon(
                          Icons.location_on_outlined,
                          color: appColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(color: Colors.grey),
                          ),
                        ),
                        height: 35,
                        width: 35,
                        child: Icon(
                          Icons.circle_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_circle,
                        color: appColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
    );
  }
}
