import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';
import 'package:nomi/pages/login.dart';
import 'package:nomi/pages/register.dart';

class welcome extends StatefulWidget {
  welcome({Key? key}) : super(key: key);

  static const String page_id = "Welcome";

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Have an account already? ',
                style: TextStyle(color: Colors.black54, fontFamily: 'regular'),
              ),
              TextSpan(
                text: ' Login',
                style: TextStyle(color: appColor),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Image.asset(
              'assets/images/twitter.png',
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Text(
              'See what\'s happening in the world right now.',
              style: TextStyle(fontFamily: 'semi-bold', fontSize: 22),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Continue with Google',
                        style: TextStyle(fontFamily: 'semi-bold'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Center(child: Text('Or')),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => register()));
                  },
                  child: Text(
                    'Create account',
                    style: TextStyle(fontFamily: 'semi-bold'),
                  ),
                  style: appButton(),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'By signing up,you agree to our ',
                        style: TextStyle(
                            color: Colors.black54, fontFamily: 'regular'),
                      ),
                      TextSpan(
                        text: ' Terms,Privacy Policy and Cookie Use.',
                        style: TextStyle(color: appColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
