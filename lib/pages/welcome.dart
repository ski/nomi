import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';
import 'package:nomi/pages/login.dart';
import 'package:nomi/pages/register.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  static const String pageId = "Welcome";

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(20),
      //   child: RichText(
      //     text: TextSpan(
      //       children: [
      //         const TextSpan(
      //           text: 'Have an account already? ',
      //           style: TextStyle(color: Colors.black54, fontFamily: 'regular'),
      //         ),
      //         TextSpan(
      //           text: ' Login',
      //           style: const TextStyle(color: appColor),
      //           recognizer: TapGestureRecognizer()
      //             ..onTap = () {
      //               Navigator.push(context,
      //                   MaterialPageRoute(builder: (context) => login()));
      //             },
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Image.asset(
              'assets/images/logo.png',
              height: 268,
              width: 256,
            ),
          ),
          const Text(
            'See what\'s happening in the world right now.',
            style: TextStyle(fontFamily: 'semi-bold', fontSize: 22),
          ),
          Column(
            children: [
              // Container(
              //   padding: const EdgeInsets.symmetric(vertical: 12),
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Colors.grey.shade300),
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Image.asset(
              //         'assets/images/google.png',
              //         height: 25,
              //         width: 25,
              //         fit: BoxFit.cover,
              //       ),
              //       const SizedBox(
              //         width: 10,
              //       ),
              //       const Text(
              //         'Continue with Google',
              //         style: TextStyle(fontFamily: 'semi-bold'),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Expanded(
                  //   flex: 5,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       border: Border(
                  //         bottom: BorderSide(color: Colors.grey.shade300),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // const Expanded(
                  //   flex: 2,
                  //   child: Center(child: Text('Or')),
                  // ),
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
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
                style: appButton(),
                child: const Text(
                  'Login',
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // RichText(
              //   text: const TextSpan(
              //     children: [
              //       TextSpan(
              //         text: 'By signing up,you agree to our ',
              //         style: TextStyle(
              //             color: Colors.black54, fontFamily: 'regular'),
              //       ),
              //       TextSpan(
              //         text: ' Terms,Privacy Policy and Cookie Use.',
              //         style: TextStyle(color: appColor),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}
