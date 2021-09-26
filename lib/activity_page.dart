import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Choose activity')),
      ),
      body: Container(
        child: Text('im in activity'),
      ),
    );
  }
}
