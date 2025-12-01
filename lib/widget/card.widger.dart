import 'package:cardvipno1/screens/card_detailpeg.dart';
import 'package:flutter/material.dart';
import '../model/card_model.dart';


class CardWidget extends StatelessWidget {
  final List<Car> cars;

  const CardWidget({required this.cars});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cars.length,
        itemBuilder: (context, index) {
          final car = cars[index];
          final rent = car.rent[0];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CarDetailPage(
                    car: car,
                    rent: rent, 
                  ),
                ),
              );
            },
            child: Container(
              width: 180,
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 5)
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(rent.images, fit: BoxFit.cover),
                  ),
                  SizedBox(height: 5),
                  Text(car.brend,
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("${rent.rating} ⭐"),
                  Text("${rent.price}"),
                  SizedBox(height: 5),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
