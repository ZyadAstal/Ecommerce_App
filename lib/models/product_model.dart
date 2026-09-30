class Product {
  String title;
  String size;
  double price;
  String imageUrl;
  int quantity;
  double rating;
  int reviewsCount;
  String description;

  Product({
    required this.title,
    required this.size,
    required this.price,
    this.imageUrl = 'assets/images/t-shirt.png',
    this.quantity = 1,
    this.rating = 4.0,
    this.reviewsCount = 45,
    this.description =
        'Blue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of Them',
  });
}
