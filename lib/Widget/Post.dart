import 'package:flutter/material.dart';
import 'package:linkedin_clone/Data/Post.dart';
import 'package:linkedin_clone/Model/Post.dart';
import 'package:linkedin_clone/Screens/Home.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(PostWidget());
}

class PostWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PostPage();
  }
}

class PostPage extends StatefulWidget {
  PostPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<PostPage> {

  @override
  Widget build(BuildContext context) {

    return Material(
      elevation: 10,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: posts.length,
          itemBuilder: (context, index){
            return Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Joan Louji",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(" likes this post"),
                                ],
                              ),
                              Icon(
                                Icons.more_vert,
                                size: 14.0,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(10.0),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(right: 10.0),
                                    child: CircleAvatar(
                                      backgroundImage:
                                      NetworkImage(posts[index].useravatar),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          posts[index].username,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          posts[index].userCaption,
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.0,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        posts[index].timeAgo +" . "+ " Edited",
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: 10.0,
                              ),
                              Text(posts[index].posttext),
                              Container(
                                padding: EdgeInsets.only(top: 20),
                                child: FadeInImage(
                                  image: NetworkImage(posts[index].postimage),
                                  placeholder: NetworkImage(posts[index].postimage),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 17,
                                      width: 17,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Icon(MdiIcons.thumbUp,size: 12,color: Colors.white,),
                                    ),
                                    Text(posts[index].totalLikes, style: TextStyle(fontSize: 13),)
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20, bottom: 10),
                                child: Text(posts[index].totalComments+" comments", style: TextStyle(color: Colors.grey[700], fontSize: 12),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 1.0,
                          color: Colors.grey[300],
                        ),
                        Container(
                          height: 50.0,
                          color: Colors.white,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(MdiIcons.thumbUpOutline, size: 20,),
                                    Container(
                                      padding: EdgeInsets.only(left: 5.0),
                                      child: Text("Like"),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(MdiIcons.messageOutline),
                                    Container(
                                      padding: EdgeInsets.only(left: 5.0),
                                      child: Text("Comment"),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(MdiIcons.shareAllOutline),
                                    Container(
                                      padding: EdgeInsets.only(left: 5.0),
                                      child: Text("Share"),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(MdiIcons.sendOutline),
                                    Container(
                                      padding: EdgeInsets.only(left: 5.0),
                                      child: Text("Send"),
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
                ],
              ),
            );
          }
      ),
    );
  }
}
