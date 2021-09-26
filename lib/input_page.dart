import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_me/food_page.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'food_page.dart';
import 'sport_page.dart';
import 'activity_page.dart';
import 'music_page.dart';

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
                child: ReusableCard(
                  //setting the method of the card
                  color: Colors.grey,
                  cardChild: FlatButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FoodPage();
                        }));
                      });
                    },
                    child: Icon(Icons.food_bank),
                  ),
                ),
              ),
              //Sport Section
              Expanded(
                //MOVE TO SPORTS PAGE
                child: ReusableCard(
                  //setting the method of the card
                  color: Colors.grey,
                  cardChild: FlatButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SportPage();
                        }));
                      });
                    },
                    child: Icon(Icons.sports_soccer),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              //Food Section
              Expanded(
                //MOVE TO FOOD PAGE
                child: ReusableCard(
                  //setting the method of the card
                  color: Colors.grey,
                  cardChild: FlatButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MusicPage();
                        }));
                      });
                    },
                    child: Icon(Icons.music_note),
                  ),
                ),
              ),
              //Sport Section
              Expanded(
                //MOVE TO SPORTS PAGE
                child: ReusableCard(
                  //setting the method of the card
                  color: Colors.grey,
                  cardChild: FlatButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ActivityPage();
                        }));
                      });
                    },
                    child: Icon(
                      Icons.wine_bar,
                    ),
                  ),
                ),
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
                  return FoodPage();
                }));
              });
            },
            child: Text('TBD'),
          )
        ],
      ),
    );
  }
}
