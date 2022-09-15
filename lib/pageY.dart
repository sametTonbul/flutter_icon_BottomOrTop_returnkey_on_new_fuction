import 'package:flutter_iconreturnkey/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconreturnkey/pageZ.dart';

class PageY extends StatefulWidget {
  const PageY({super.key});
  @override
  State<PageY> createState() => _PageYState();}

class _PageYState extends State<PageY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Y'),
        leading: IconButton
          (icon: Icon(Icons.arrow_back),
           onPressed: () => Navigator.pop(context),
          ),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst),
              child: Text('Back HomePage'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PageZ())),
              child: Text('Move to Next Page'))
          ],
        ),
      ),
    );
  }
}