class Dish {
  final String dishName;
  final String dishImage;
  final String dishPrice;

  Dish(
      {required this.dishName,
      required this.dishImage,
      required this.dishPrice});

  factory Dish.fromJson(Map<String, dynamic> json) {
    return Dish(
      dishName: json['dishName'],
      dishImage: json['dishImage'],
      dishPrice: json['dishPrice'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dishName': dishName,
      'dishImage': dishImage,
      'dishPrice': dishPrice,
    };
  }
}
