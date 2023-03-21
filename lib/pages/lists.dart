import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';

class lists extends StatefulWidget {
  lists({Key? key}) : super(key: key);

  static const String page_id = "Lists";

  @override
  State<lists> createState() => _listsState();
}

class _listsState extends State<lists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: appColor,
        child: Icon(Icons.list_alt_outlined),
        onPressed: () {},
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Lists',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 18, color: Colors.black),
      ),
      actions: [
        PopupMenuButton(
          padding: EdgeInsets.all(0),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text(
                'Lists you\'re on',
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              value: 1,
            ),
          ],
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey.shade300),
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pinned Lists',
                      style: headText(),
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(color: appColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/s2.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text('Hollywood')
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover new Lists',
                  style: headText(),
                ),
                SizedBox(
                  height: 20,
                ),
                discoverList(),
                discoverList(),
                discoverList(),
                Text(
                  'Show more',
                  style: TextStyle(color: appColor),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Lists',
                  style: headText(),
                ),
                SizedBox(
                  height: 20,
                ),
                yourList(),
                yourList(),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  Widget discoverList() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(color: Colors.blue.shade200),
            child: Icon(Icons.list_alt_outlined),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My List',
                    style: TextStyle(fontFamily: 'medium', fontSize: 16),
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
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
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'alice  ',
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'medium'),
                              ),
                              TextSpan(
                                text: ' @alice',
                                style: TextStyle(color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(30)),
            child: Text(
              'Follow',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  Widget yourList() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage('assets/images/s5.jpg'), fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bollywood',
                    style: TextStyle(fontFamily: 'medium', fontSize: 16),
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                    style: TextStyle(color: Colors.black45),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/twitter.png',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Twitter Momments India',
                        style: TextStyle(fontFamily: 'medium'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Icon(Icons.bookmark_outline)
        ],
      ),
    );
  }
}
