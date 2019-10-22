class Product{
  int adID;
  String dateAdded;
  String title;
  String desc;
  int price;
  var warranty;
  String category;
  int mobileNo;
  String image;
  bool negotiable;

  Product(this.adID, this.dateAdded, this.title, this.desc, this.price,
      this.warranty, this.category, this.mobileNo, this.image, this.negotiable);

}

class MyProductList{

  List<Product> trendingListItems =[
    Product(
        123,
        "02 Apr 2019",
        "Lenovo T450",
        "Discover the Lenovo ThinkPad T450, a 14-inch thin and light business Ultrabook with the newest Intel Core i processor, backlit keyboard and up to 17 hours battery backup.",
        40000,
        "5 months",
        "Electronics",
        8377028021,
        "assets/images/lenovot450.jpg",
        true),
    Product(
        124,
        "05 Apr 2019",
        "Samsung S9+",
        "Discover Galaxy S9 and S9+ and the revolutionary camera that adapts like the human eye.",
        60000,
        "5 months",
        "Mobiles",
        8377028021,
        "assets/images/samsuns9+.jpg",
        true),
    Product(
        125,
        "23 Mar 2019",
        "Himalayan",
        "The Himalayan is an ‘all-rounder’ motorcycle built on an all new platform from Royal Enfield. It is a 411cc adventure motorcycle which was partly developed in the United Kingdom. The motorcycle brings a series of firsts for the brand.",
        100000,
        "5 months",
        "Bike",
        8377028021,
        "assets/images/bike.jpg",
        true),
    Product(
        126,
        "10 Feb 2019",
        "Canon 200D",
        "Canon EOS 200D 24.2MP Digital SLR Camera + EF-S 18-55 mm f4 is STM Lens, Free Camera Case and 16GB Card Inside",
        35000,
        "5 months",
        "Electronics",
        8377028021,
        "assets/images/canon.jpg",
        true),
    Product(
        127,
        "1 Jan 2019",
        "Sofa",
        "Bharat Lifestyle Nano Fabric 6 Seater Sofa",
        4000,
        "5 months",
        "Furniture",
        8377028021,
        "assets/images/sofa.jpg",
        true),
  ];


  List<Product>  recommendListItems = [
    Product(
        124,
        "05 Apr 2019",
        "Samsung S9+",
        "Discover Galaxy S9 and S9+ and the revolutionary camera that adapts like the human eye.",
        60000,
        "5 months",
        "Mobiles",
        8377028021,
        "assets/images/samsuns9+.jpg",
        true),
    Product(
        123,
        "02 Apr 2019",
        "Lenovo T450",
        "Discover the Lenovo ThinkPad T450, a 14-inch thin and light business Ultrabook with the newest Intel Core i processor, backlit keyboard and up to 17 hours battery backup.",
        40000,
        "5 months",
        "Electronics",
        8377028021,
        "assets/images/lenovot450.jpg",
        true),
    Product(
        125,
        "03 Dec 2018",
        "Himalayan",
        "The Himalayan is an ‘all-rounder’ motorcycle built on an all new platform from Royal Enfield. It is a 411cc adventure motorcycle which was partly developed in the United Kingdom. The motorcycle brings a series of firsts for the brand.",
        100000,
        "5 months",
        "Bike",
        8377028021,
        "assets/images/bike.jpg",
        true),
    Product(
        126,
        "15 Mar 2019",
        "Canon 200D",
        "Canon EOS 200D 24.2MP Digital SLR Camera + EF-S 18-55 mm f4 is STM Lens, Free Camera Case and 16GB Card Inside",
        35000,
        "5 months",
        "Electronics",
        8377028021,
        "assets/images/canon.jpg",
        true),
    Product(
        127,
        "09 Apr 2019",
        "Sofa",
        "Bharat Lifestyle Nano Fabric 6 Seater Sofa",
        4000,
        "5 months",
        "Furniture",
        8377028021,
        "assets/images/sofa.jpg",
        true),
  ];

  List<Product>  dealsListItems = [
  Product(
  125,
  "02 Jan 2019",
  "Himalayan",
  "The Himalayan is an ‘all-rounder’ motorcycle built on an all new platform from Royal Enfield. It is a 411cc adventure motorcycle which was partly developed in the United Kingdom. The motorcycle brings a series of firsts for the brand.",
  100000,
  "5 months",
  "Bike",
  8377028021,
  "assets/images/bike.jpg",
  true),
  Product(
  126,
  "10 Apr 2019",
  "Canon 200D",
  "Canon EOS 200D 24.2MP Digital SLR Camera + EF-S 18-55 mm f4 is STM Lens, Free Camera Case and 16GB Card Inside",
  35000,
  "5 months",
  "Electronics",
  8377028021,
  "assets/images/canon.jpg",
  true),
  Product(
  124,
  "05 Mar 2019",
  "Samsung S9+",
  "Discover Galaxy S9 and S9+ and the revolutionary camera that adapts like the human eye.",
  60000,
  "5 months",
  "Mobiles",
  8377028021,
  "assets/images/samsuns9+.jpg",
  true),
  Product(
  123,
  "02 Feb 2019",
  "Lenovo T450",
  "Discover the Lenovo ThinkPad T450, a 14-inch thin and light business Ultrabook with the newest Intel Core i processor, backlit keyboard and up to 17 hours battery backup.",
  40000,
  "5 months",
  "Electronics",
  8377028021,
  "assets/images/lenovot450.jpg",
  true),
  Product(
  127,
  "02 Dec 2012",
  "Sofa",
  "Bharat Lifestyle Nano Fabric 6 Seater Sofa",
  4000,
  "5 months",
  "Furniture",
  8377028021,
  "assets/images/sofa.jpg",
  true),
  ];


}

