import 'package:flutter/material.dart';
import 'package:linkedin_clone/Screens/Home.dart';

void main() {
  runApp(HeaderWidget());
}

class HeaderWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return HeaderWidgetPage();
  }
}

class HeaderWidgetPage extends StatefulWidget {
  HeaderWidgetPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidgetPage> {

  @override
  Widget build(BuildContext context) {

    return Material(
      elevation: 8,
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.grey[200],
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Text("Get More Out of Linkedin"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(Icons.close),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200.0,
                    padding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      bottom: 10.0,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width - 100,
                          padding: EdgeInsets.all(4.0),
                          decoration: new BoxDecoration(
                              border: new Border.all(
                                color: Colors.grey[300],
                              )),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 18.0, top: 40.0),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            CircleAvatar(
                                              backgroundImage: NetworkImage('https://www.nj.com/resizer/zovGSasCaR41h_yUGYHXbVTQW2A=/1280x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/SJGKVE5UNVESVCW7BBOHKQCZVE.jpg'),
                                            ),
                                            CircleAvatar(
                                              backgroundImage: NetworkImage('https://i.ytimg.com/vi/9snfz2sQMFQ/maxresdefault.jpg'),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Add a Photo to get recognized",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                                Text(
                                                  "A picture helps you to build your network",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 12.0,
                                                    color: Colors.grey[700]
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                      ),
                                    ],
                                  ),
                                ),

                                Expanded(
                                  child: Container(),
                                ),
                                Container(
                                  height: 1.0,
                                  color: Colors.grey,
                                ),
                                Container(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    "ADD PHOTO",
                                    style: TextStyle(
                                      color: Color(0xFF0091CA),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 10.0,
                        ),
                        Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width - 25,
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: new BoxDecoration(
                                border: new Border.all(
                                  color: Colors.grey[300],
                                )),
                            child: Container(
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(20.0),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(15.0),
                                        ),
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                              border: Border.all(color: Color(0XFF0e76a8),width: 3),
                                              color: Color(0XFFbdcce4)
                                          ),
                                          child: Icon(Icons.check, size: 35,color: Color(0XFF0e76a8),),
                                        ),
                                        Container(
                                          width: 300,
                                          padding: EdgeInsets.only(left: 15),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('300 Connections', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                                              Text('Your new connection will bring you closer to industry news, job oppoutunities, and more', style: TextStyle(color: Colors.grey[600], fontSize: 15),)
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
