class Bike {
  final String id;
  final String name;
  final String thumb;
  final int price;
  final int discount;
  final String description;
  final String brand;
  final List<String> thumbDetail;

  Bike({
    required this.id,
    required this.name,
    required this.thumb,
    required this.price,
    required this.discount,
    required this.description,
    required this.brand,
    required this.thumbDetail,
  });

  factory Bike.fromJson(Map<String, dynamic> json) {
    return Bike(
      id: json['id'] as String,
      name: json['name'] as String,
      thumb: json['thumb'] as String,
      price: json['price'] as int,
      discount: json['discount'] as int,
      description: json['description'] as String,
      brand: json['brand'] as String,
      thumbDetail: (json['thumb_detail'] as List<dynamic>)
          .map((item) => item as String)
          .toList(),
    );
  }
}
