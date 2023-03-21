import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';

class topics extends StatefulWidget {
  topics({Key? key}) : super(key: key);

  static const String page_id = "Topics";

  @override
  State<topics> createState() => _topicsState();
}

class _topicsState extends State<topics> {
  int tabID = 1;

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
      title: Text(
        'Topics',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 18, color: Colors.black),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: _buildSegment(),
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Text(
              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                topicList(),
                topicList(),
                topicList(),
                topicList(),
                topicList(),
                topicList(),
                topicList(),
                topicList(),
                topicList(),
                topicList(),
                topicList(),
                topicList(),
                topicList(),
                topicList(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget topicList() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          CircleAvatar(child: Icon(Icons.comment_outlined)),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ahmedabad',
                    style: TextStyle(fontFamily: 'medium', fontSize: 16),
                  ),
                  Text(
                    'Local news',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.black26),
            ),
            child: Text('Following'),
          )
        ],
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: segmentDecoration(1),
                  child: Text(
                    'Followed',
                    style: segmentText(1),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 2;
                    });
                  },
                  child: Container(
                      padding: EdgeInsets.only(bottom: 5),
                      decoration: segmentDecoration(2),
                      child: Text(
                        'Suggested',
                        style: segmentText(2),
                        textAlign: TextAlign.center,
                      ))),
            ),
            Expanded(
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 3;
                    });
                  },
                  child: Container(
                      padding: EdgeInsets.only(bottom: 5),
                      decoration: segmentDecoration(3),
                      child: Text(
                        'Not Interested',
                        style: segmentText(3),
                        textAlign: TextAlign.center,
                      ))),
            ),
          ],
        ),
      ),
    );
  }

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
