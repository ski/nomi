import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';
import 'dart:html' as html;
import 'package:http/http.dart' as http;

class ScreenArguments {
  final String c;

  ScreenArguments({this.c = ''});
}

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  static const String pageId = "Welcome";

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    // print(args);

    return Scaffold(
      body: _buildBody(),
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
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  const queryParameters = {
                    'redirect_uri': 'https://nomi.re/callback.html',
                    'response_type': 'code',
                    'client_id': '67217dc9-2fea-4028-9783-08e44781d4bf',
                    'scope': 'all',
                  };

                  var uri = Uri.https(
                      'deedum.io', '/oauth/authorize', queryParameters);
                  // final response = await http.get(uri);
                  // html.window.console.log(response.body);
                  html.window.location.href = uri.toString();

                  // Construct the url
                  // final url = Uri.https('deedum.io', '/oauth/authorize', {
                  //   'response_type': 'code',
                  //   'client_id': '48277264-0d36-4f84-990d-75e7a3c05b43',
                  //   'redirect_uri': 'nomi.re/#/',
                  //   'scope': 'add',
                  // });

                  // final result = await FlutterWebAuth2.authenticate(
                  //     url: url.toString(), callbackUrlScheme: 'https');

                  // final code = Uri.parse(result).queryParameters['code'];
                  // print('code is $code');
                  // var response = await http.get(uri, headers: {
                  //   HttpHeaders.authorizationHeader: 'Token $token',
                  //   HttpHeaders.contentTypeHeader: 'application/json',
                  // });
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => const Login()));
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
            ],
          )
        ],
      ),
    );
  }
}
