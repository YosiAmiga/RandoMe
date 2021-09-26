import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

class SportPage extends StatefulWidget {
  @override
  _SportPageState createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Choose sports')),
      ),
      body: Container(
        child: Text('im in sports'),
      ),
    );
  }
}
