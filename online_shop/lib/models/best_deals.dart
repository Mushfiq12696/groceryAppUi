import 'package:flutter/cupertino.dart';

class BestDeals {
  final String? img;
  final String? name;
  

  BestDeals({this.img, this.name});
  static List<BestDeals> best_Deals() {
    return [
      BestDeals(img: 'assets/images/chicken.jpg', name: 'Chicken'),
      BestDeals(img: 'assets/images/apple.jpg', name: 'Apple'),
      BestDeals(img: 'assets/images/fish.jpg', name: 'Fish'),
      BestDeals(img: 'assets/images/coockies.jpg', name: 'Coockies'),
      BestDeals(img: 'assets/images/cosmetic.jpg', name: 'Cosmetics'),
      BestDeals(img: 'assets/images/dairy.jpg', name: 'Dairy'),
    ];
  }
}
