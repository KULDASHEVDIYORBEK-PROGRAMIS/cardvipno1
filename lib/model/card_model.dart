class CardModel {
  List<Car> cars;

  CardModel({required this.cars});

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
      cars: (json["cars"] as List)
          .map((e) => Car.fromJson(e))
          .toList(),
    );
  }
}

class Car {
  final String brend;
  final String BrendLogo;
  final List<Rent> rent;

  Car({
    required this.brend,
    required this.BrendLogo,
    required this.rent,
  });

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      brend: json["brend"],
      BrendLogo: json["BrendLogo"],
      rent: (json["rent"] as List).map((e) => Rent.fromJson(e)).toList(),
    );
  }
}

class Rent {
  final String name;
  final String seats;
  final String rating;
  final String price;
  final String images;

  Rent({
    required this.name,
    required this.seats,
    required this.rating,
    required this.price,
    required this.images,
  });

  factory Rent.fromJson(Map<String, dynamic> json) {
    return Rent(
      name: json["name"],
      seats: json["seats"],
      rating: json["rating"],
      price: json["price"],
      images: json["images"],
    );
  }
}
