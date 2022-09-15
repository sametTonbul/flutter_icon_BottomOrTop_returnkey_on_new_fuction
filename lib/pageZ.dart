import 'package:flutter/material.dart';

class PageZ extends StatefulWidget {
  const PageZ({super.key});

  @override
  State<PageZ> createState() => _PageZState();}

class _PageZState extends State<PageZ> {

  Future<bool> bottomBackKey(BuildContext context) async {
    print('OnClickNowBackKey');
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Z'),
        leading: IconButton
          (icon: Icon(Icons.arrow_back),
           onPressed: () => Navigator.pop(context),
          ),
        ),
      body: WillPopScope(
        onWillPop: () => bottomBackKey(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst),
                child: Text('Back HomePage'),),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Back Page')),
            ],
          ),
        ),
      ),
    );
  }
}