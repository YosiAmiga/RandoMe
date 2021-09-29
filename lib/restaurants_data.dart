import 'package:random_me/restaurants.dart';

class RestaurantData {
  //a list containing all the data of any restaurant: picture number, name, link.
  List<Restaurant> _restaurantBank = [
    Restaurant(1, 'Ruben', 'https://www.rubenisrael.co.il/branches/karmel'),
    Restaurant(2, 'Japanika', 'https://www.japanika.net/branch/חיפה-כרמל/'),
    Restaurant(3, 'BBB', 'https://burgus.co.il'),
    Restaurant(4, 'Vivino', 'https://www.vivino.co.il/haifa1'),
    Restaurant(5, 'Raffaello',
        'https://www.raffaello.co.il/deliveryfv?gclid=CjwKCAjwndCKBhAkEiwAgSDKQasYlO9y8DnsglqYHx_9N9hQY1UQmFaEkZbFM0B2snkm8LblabmrURoC8qEQAvD_BwE'),
    Restaurant(6, 'Agadir', 'https://agadir.co.il/branch/haifa/'),
    Restaurant(7, 'Tatami', 'https://tatami-sushi.co.il'),
  ];

  String getRestaurantName(int restNum) {
    return _restaurantBank[restNum - 1].restaurantName;
  }

  String getRestaurantSite(int restNum) {
    return _restaurantBank[restNum - 1].linkToSite;
  }
}
