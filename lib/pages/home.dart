import 'package:flutter/material.dart';
import './play.dart';
import './dictionary.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Flashcards', icon: Icon(Icons.games)),
              Tab(text: 'Dictionary', icon: Icon(Icons.book)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            PlayPage(),
            DictionaryPage(),
          ],
        ),
      ),
    );
  }
}
