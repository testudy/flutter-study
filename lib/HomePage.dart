import 'package:flutter/material.dart';
import './RandomWords.dart';
import './LottiePage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.more_horiz), onPressed: () {
            Navigator.of(context).push(
              new MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return LottiePage();
                },
              ),
            );
          }),
        ],
      ),
      body: RandomWords(),
    );
  }
}
