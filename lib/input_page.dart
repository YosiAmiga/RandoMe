import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_me/food_page.dart';
import 'food_page.dart';
import 'sport_page.dart';
import 'activity_page.dart';
import 'music_page.dart';
import 'yosi_page.dart';

enum Genders { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('RandoME')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              //Food Section
              Expanded(
                //MOVE TO FOOD PAGE
                child: buildFoodPageButton(context),
              ),
              //Sport Section
              Expanded(
                //MOVE TO SPORTS PAGE
                child: buildSportsPageButton(context),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              //Food Section
              Expanded(
                //MOVE TO MUSIC PAGE
                child: buildMusicPageButton(context),
              ),
              //Sport Section
              Expanded(
                //MOVE TO ACTIVITY PAGE
                child: buildActivityPageButton(context),
              ),
            ],
          )),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return YosiPage();
                }));
              });
            },
            child: Text('About myself'),
          )
        ],
      ),
    );
  }

  //build button methods:

  ElevatedButton buildActivityPageButton(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(CircleBorder()),
        padding: MaterialStateProperty.all(EdgeInsets.all(50)),
        backgroundColor:
            MaterialStateProperty.all(Colors.purple), // <-- Button color
        overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed))
            return Colors.white; // <-- Splash color
        }),
      ),
      onPressed: () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ActivityPage();
          }));
        });
      },
      child: Icon(
        Icons.wine_bar,
        size: 50,
      ),
    );
  }

  ElevatedButton buildMusicPageButton(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(CircleBorder()),
        padding: MaterialStateProperty.all(EdgeInsets.all(50)),
        backgroundColor:
            MaterialStateProperty.all(Colors.green), // <-- Button color
        overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed))
            return Colors.white; // <-- Splash color
        }),
      ),
      onPressed: () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MusicPage();
          }));
        });
      },
      child: Icon(
        Icons.music_note,
        size: 50,
      ),
    );
  }

  ElevatedButton buildSportsPageButton(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(CircleBorder()),
        padding: MaterialStateProperty.all(EdgeInsets.all(50)),
        backgroundColor:
            MaterialStateProperty.all(Colors.blue), // <-- Button color
        overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed))
            return Colors.white; // <-- Splash color
        }),
      ),
      onPressed: () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SportPage();
          }));
        });
      },
      child: Icon(
        Icons.sports_soccer,
        size: 50,
      ),
    );
  }

  ElevatedButton buildFoodPageButton(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(CircleBorder()),
        padding: MaterialStateProperty.all(EdgeInsets.all(50)),
        backgroundColor:
            MaterialStateProperty.all(Colors.red), // <-- Button color
        overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed))
            return Colors.red; // <-- Splash color
        }),
      ),
      onPressed: () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FoodPage();
          }));
        });
      },
      child: Icon(
        Icons.food_bank,
        size: 50,
      ),
    );
  }
}
