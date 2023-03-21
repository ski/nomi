import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';

class monetization extends StatefulWidget {
  monetization({Key? key}) : super(key: key);

  static const String page_id = "Monetization";

  @override
  State<monetization> createState() => _monetizationState();
}

class _monetizationState extends State<monetization> {
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
        'Monetization',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 18, color: Colors.black),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade300),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Monetization options',
                style: headText(),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Ticketed Spaces'),
              SizedBox(
                height: 20,
              ),
              Text('Super Follows'),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get help',
                style: headText(),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Help Center'),
            ],
          ),
        )
      ],
    );
  }
}
