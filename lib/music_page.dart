import 'package:flutter/material.dart';
import 'input_page.dart';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'music_data.dart';

class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

//an instance of the class to access the restaurants list and data
MusicData musicData = MusicData();

class _MusicPageState extends State<MusicPage> {
  //a default number and text for before randomising
  int musicNumber = 0;
  String nameToShow = 'Playlist Name';
  String playlistLink = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Music')),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                height: 200,
                width: 250,
                //switch between images according to the number of playlists that was elected
                child: Image.asset(
                  'images/music$musicNumber.jpg',
                  fit: BoxFit.contain,
                )),
            SizedBox(
              height: 50,
            ),
            //wrap the text inside this widget in order to use linking to website
            InkWell(
                child: Text(
                  //switch between playlists names according to the number of playlists that was elected
                  nameToShow,
                  textAlign: TextAlign.right,
                  style: kBottomButtonText,
                ),
                onTap: () {
                  _launchURL();
                }),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    // as the randomise button is pressed, a restaurant is being chosen from the restaurants_data list
                    //current range is 7 restaurants
                    musicNumber = Random().nextInt(5) + 1;

                    //set the name of the restaurant to be the name from the random that was elected
                    nameToShow = musicData.getPlaylistName(musicNumber);

                    //set the link of the restaurant to be the link from the random that was elected
                    playlistLink = musicData.getPlaylistLink(musicNumber);
                  });
                },
                child: Text(
                  'Randomise!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(CircleBorder()),
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                  backgroundColor: MaterialStateProperty.all(
                      Colors.green), // <-- Button color
                  overlayColor:
                      MaterialStateProperty.resolveWith<Color?>((states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.red; // <-- Splash color
                  }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // a method to use a string as a link to the restaurant site
  void _launchURL() async => await canLaunch(playlistLink)
      ? await launch(playlistLink)
      : throw 'Could not launch $playlistLink';
}
