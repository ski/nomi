import 'package:flutter/material.dart';
import 'package:nomi/helper/style.dart';
import 'package:nomi/pages/bookmarks.dart';
import 'package:nomi/pages/contentPreference.dart';
import 'package:nomi/pages/conversationInfo.dart';
import 'package:nomi/pages/directMessages.dart';
import 'package:nomi/pages/exploreSetting.dart';
import 'package:nomi/pages/forgotpassword.dart';
import 'package:nomi/pages/friendProfile.dart';
import 'package:nomi/pages/homeScreen.dart';
import 'package:nomi/pages/inbox.dart';
import 'package:nomi/pages/lists.dart';
import 'package:nomi/pages/login.dart';
import 'package:nomi/pages/loginPassword.dart';
import 'package:nomi/pages/messageScreen.dart';
import 'package:nomi/pages/moments.dart';
import 'package:nomi/pages/monetization.dart';
import 'package:nomi/pages/newTweet.dart';
import 'package:nomi/pages/notifications.dart';
import 'package:nomi/pages/passChangeSuccess.dart';
import 'package:nomi/pages/profile.dart';
import 'package:nomi/pages/register.dart';
import 'package:nomi/pages/registerTerms.dart';
import 'package:nomi/pages/resetCode.dart';
import 'package:nomi/pages/resetMethod.dart';
import 'package:nomi/pages/resetPassword.dart';
import 'package:nomi/pages/search.dart';
import 'package:nomi/pages/settings.dart';
import 'package:nomi/pages/sigunup.dart';
import 'package:nomi/pages/spaces.dart';
import 'package:nomi/pages/tabs.dart';
import 'package:nomi/pages/topics.dart';
import 'package:nomi/pages/trending.dart';
import 'package:nomi/pages/tweet.dart';
import 'package:nomi/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nomi.re',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: const Welcome(),
      routes: {
        tabs.page_id: (context) => tabs(),
        Login.pageId: (context) => Login(),
        loginPassword.page_id: (context) => loginPassword(),
        forgotPassword.page_id: (context) => forgotPassword(),
        resetMethod.page_id: (context) => resetMethod(),
        resetCode.page_id: (context) => resetCode(),
        resetPassword.page_id: (context) => resetPassword(),
        passChangeSuccess.page_id: (context) => passChangeSuccess(),
        register.page_id: (context) => register(),
        registerTerm.page_id: (context) => registerTerm(),
        signup.page_id: (context) => signup(),
        homeScreen.page_id: (context) => homeScreen(),
        search.page_id: (context) => search(),
        spaces.page_id: (context) => spaces(),
        notifications.page_id: (context) => notifications(),
        inbox.page_id: (context) => inbox(),
        contentPreference.page_id: (context) => contentPreference(),
        exploreSetting.page_id: (context) => exploreSetting(),
        directMessages.page_id: (context) => directMessages(),
        messageScreen.page_id: (context) => messageScreen(),
        conversationInfo.page_id: (context) => conversationInfo(),
        tweet.page_id: (context) => tweet(),
        friendProfile.page_id: (context) => friendProfile(),
        profile.page_id: (context) => profile(),
        lists.page_id: (context) => lists(),
        topics.page_id: (context) => topics(),
        bookmarks.page_id: (context) => bookmarks(),
        moments.page_id: (context) => moments(),
        monetization.page_id: (context) => monetization(),
        settings.page_id: (context) => settings(),
        trending.page_id: (context) => trending(),
        newTweet.page_id: (context) => newTweet(),
      },
    );
  }
}
