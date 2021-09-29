import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'constants.dart';
import 'restaurants_data.dart';
import 'package:url_launcher/url_launcher.dart';

//an instance of the class to access the restaurants list and data
RestaurantData restaurantData = RestaurantData();

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  //a default number and text for before randomising
  int restaurantNumber = 0;
  String nameToShow = 'Restaurant Site';
  String restLink = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Restaurants')),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                height: 200,
                width: 250,
                //switch between images according to the number of restaurant that was elected
                child: Image.asset(
                  'images/rest$restaurantNumber.jpg',
                  fit: BoxFit.contain,
                )),
            SizedBox(
              height: 50,
            ),
            //wrap the text inside this widget in order to use linking to website
            InkWell(
                child: Text(
                  //switch between restaurants names according to the number of restaurant that was elected
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
                    //current range is 3 restaurants
                    restaurantNumber = Random().nextInt(3) + 1;

                    //set the name of the restaurant to be the name from the random that was elected
                    nameToShow =
                        restaurantData.getRestaurantName(restaurantNumber);

                    //set the link of the restaurant to be the link from the random that was elected
                    restLink =
                        restaurantData.getRestaurantSite(restaurantNumber);
                    print(restaurantNumber);
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
  void _launchURL() async => await canLaunch(restLink)
      ? await launch(restLink)
      : throw 'Could not launch $restLink';
}
