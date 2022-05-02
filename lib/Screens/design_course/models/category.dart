class Category {
  Category({
    this.title = '',
    this.imagePath = '',
    this.productCount = 0,
    this.money = 0,
    this.rating = 0.0,
  });

  String title;
  int productCount;
  int money;
  double rating;
  String imagePath;

  static List<Category> categoryList = <Category>[
    Category(
      imagePath: 'car1.png',
      title: 'User interface Design',
      productCount: 24,
      money: 25,
      rating: 4.3,
    ),
    Category(
      imagePath: 'images/car2.png',
      title: 'User interface Design',
      productCount: 22,
      money: 18,
      rating: 4.6,
    ),
    Category(
      imagePath: 'images/car1.png',
      title: 'User interface Design',
      productCount: 24,
      money: 25,
      rating: 4.3,
    ),
    Category(
      imagePath: 'images/car2.png',
      title: 'User interface Design',
      productCount: 22,
      money: 18,
      rating: 4.6,
    ),
  ];

  static List<Category> popularCourseList = <Category>[
    Category(
      imagePath: 'images/bike1.png',
      title: 'App Design Course',
      productCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'images/bike2.png',
      title: 'Web Design Course',
      productCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'images/car1.png',
      title: 'App Design Course',
      productCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'images/car2.png',
      title: 'Web Design Course',
      productCount: 28,
      money: 208,
      rating: 4.9,
    ),
  ];
}
