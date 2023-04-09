class Product {
  late String imgUrl;
  late String title;
  late String brand;
  late String oldPrice;
  late String currentPrice;
  late String date;
  late bool inCart;

  Product(String imgUrl,String brand, String title, String oldPrice, String currentPrice,
      String date,bool inCart) {
    this.imgUrl = imgUrl;
    this.brand = brand;
    this.title = title;
    this.oldPrice = oldPrice;
    this.currentPrice = currentPrice;
    this.date = date;
    this.inCart = inCart;
  }

  Product.Default() {
    this.imgUrl = 'assets/favProductSample.png';
    this.title = 'اسم المنتج هنا';
    this.oldPrice = 'د.ك 120.00';
    this.currentPrice = '120.00 د.ك';
    this.date = '2000-10 يناير';
    this.brand = 'بيور بيوتي';
    this.inCart=false;
  }
}
