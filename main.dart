import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Toast Demo'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showToast();
            },
            child: Text('Show Toast'),
          ),
        ),
      ),
    );
  }

  void showToast() {
    Fluttertoast.showToast(
        msg: "This is a toast message",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black54,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
