import 'dart:math';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';
import 'constants.dart';
import 'restaurants.dart';
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
  String nameToShow = 'Restaurant Name';
  String restLink = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Choose food')),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
              onPressed: () {
                setState(() {
                  // as the randomise button is pressed, a restaurant is being chosen from the restaurants_data list
                  //current range is 3 restaurants
                  restaurantNumber = Random().nextInt(3) + 1;

                  //set the name of the restaurant to be the name from the random that was elected
                  nameToShow =
                      restaurantData.getRestaurantName(restaurantNumber);

                  //set the link of the restaurant to be the link from the random that was elected
                  restLink = restaurantData.getRestaurantSite(restaurantNumber);
                  print(restaurantNumber);
                });
              },
              child: Container(
                  child: Text(
                'Press to Randomise!',
                style: kSuccessText,
              ))),
          Container(
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
        ],
      ),
    );
  }

  // a method to use a string as a link to the restaurant site
  void _launchURL() async => await canLaunch(restLink)
      ? await launch(restLink)
      : throw 'Could not launch $restLink';
}
