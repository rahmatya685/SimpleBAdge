import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:simpleBadge/simpleBadge.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Badge'),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SimpleBadge(
                    child: Icon(Icons.add),
                    badgeContent: Text("232431",style: TextStyle(color: Colors.white,fontSize: 12),),
                    anchorDist: 50,
                    alignment: Alignment.topRight,
                  ),
                  SimpleBadge(
                    child: Icon(Icons.add),
                    badgeContent: Text("36",style: TextStyle(color: Colors.white ),),
                    anchorDist: 20,
                    alignment: Alignment.topRight,
                  ),
                  SimpleBadge(
                    child: Icon(Icons.add),
                    badgeContent: Text("2",style: TextStyle(color: Colors.white,fontSize: 12),),
                    anchorDist: 50,
                    alignment: Alignment.topLeft,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SimpleBadge(
                    child: Icon(Icons.add),
                    badgeContent: Text("236",style: TextStyle(color: Colors.white,fontSize: 12),),
                    anchorDist: 50,
                    alignment: Alignment.centerRight,
                  ),
                  SimpleBadge(
                    child: Icon(Icons.add),
                    badgeContent: Text("36",style: TextStyle(color: Colors.white,fontSize: 12),),
                    anchorDist: 50,
                    alignment: Alignment.center,
                  ),
                  SimpleBadge(
                    child: Icon(Icons.add),
                    badgeContent: Text("##",style: TextStyle(color: Colors.white,fontSize: 12),),
                    anchorDist: 50,
                    alignment: Alignment.centerLeft,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SimpleBadge(
                    child: Icon(Icons.add),
                    badgeContent: Text("2",style: TextStyle(color: Colors.white,fontSize: 12),),
                    anchorDist: 50,
                    alignment: Alignment.bottomRight,
                  ),
                  SimpleBadge(
                    child: Icon(Icons.add),
                    badgeContent: Text("2",style: TextStyle(color: Colors.white,fontSize: 12),),
                    anchorDist: 50,
                    alignment: Alignment.bottomCenter,
                  ),
                  SimpleBadge(
                    child: Icon(Icons.error),
                    badgeContent: Text("10",style: TextStyle(color: Colors.white,fontSize: 12),),
                    anchorDist: 10,
                    alignment: Alignment.bottomLeft,
                    badgeIconPadding: 2,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
