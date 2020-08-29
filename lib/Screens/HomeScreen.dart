import 'package:flutter/material.dart';
import 'package:linkedin_clone/Screens/Home.dart';
import 'package:linkedin_clone/Widget/Header.dart';
import 'package:linkedin_clone/Widget/Post.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return HomeScreenPage();
  }
}

class HomeScreenPage extends StatefulWidget {
  HomeScreenPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenPage> {

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              HeaderWidget(),
              PostWidget(),
            ],
          ),
        ),
      );
  }
}
