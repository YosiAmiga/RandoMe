import 'package:random_me/restaurants.dart';

class RestaurantData {
  //a list containing all the data of any restaurant: picture number, name, link.
  List<Restaurant> _restaurantBank = [
    Restaurant(1, 'Ruben', 'https://www.rubenisrael.co.il/branches/karmel'),
    Restaurant(2, 'Japanika', 'https://www.japanika.net/branch/חיפה-כרמל/'),
    Restaurant(3, 'BBB', 'https://burgus.co.il'),
  ];

  String getRestaurantName(int restNum) {
    return _restaurantBank[restNum - 1].restaurantName;
  }

  String getRestaurantSite(int restNum) {
    return _restaurantBank[restNum - 1].linkToSite;
  }
}
