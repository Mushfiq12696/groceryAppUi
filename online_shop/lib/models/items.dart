class Items {
  final String? img;
  final String? name;

  Items({this.img, this.name});

  static List<Items> itemList() {
    return [
      Items(
      name: 'Dairy&Eggs',
      img: 'assets/images/dairy.jpg',
    ),
    Items(
      name: 'Fruits',
      img: 'assets/images/fruits.jpg',
    ),
    Items(
      name: 'Meats',
      img: 'assets/images/meats.jpeg',
    ),
    Items(
      name: 'Rice',
      img: 'assets/images/rice.jpg',
    ),
    Items(
      name: 'Lentils',
      img: 'assets/images/lentils.jpg',
    ),
    Items(
      name: 'Beverages',
      img: 'assets/images/beverage.jpg',
    ),
    ];
  }
}
