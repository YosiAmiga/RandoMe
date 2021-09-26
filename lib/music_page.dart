import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Choose music')),
      ),
      body: Container(
        child: Text('im in music'),
      ),
    );
  }
}
