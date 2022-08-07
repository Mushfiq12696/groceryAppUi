class BannerInfo {
  final String? img;

  BannerInfo({this.img});

  static List<BannerInfo> groceryList() {
    return [
      BannerInfo(img: 'assets/images/offer5.jpg'),
      BannerInfo(img: 'assets/images/offer6.jpg'),
      BannerInfo(img: 'assets/images/offer7.jpg'),
      BannerInfo(img: 'assets/images/offer8.jpg'),
      BannerInfo(img: 'assets/images/offer3.jpg'),
      BannerInfo(img: 'assets/images/offer1.jpg'),
      BannerInfo(img: 'assets/images/offer2.jpg'),
    ];
  }
}
