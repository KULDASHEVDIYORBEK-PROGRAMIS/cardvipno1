import 'package:flutter/material.dart';
import '../model/card_model.dart';

class CarDetailPage extends StatelessWidget {
  final Car car;
  final Rent rent;

  const CarDetailPage({
    super.key,
    required this.car,
    required this.rent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            rent.images,
            width: double.infinity,
            height: 330,
            fit: BoxFit.cover,
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.35,
            minChildSize: 0.35,
            maxChildSize: 0.85,
            builder: (_, controller) {
              return Container(
                padding: EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: ListView(
                  controller: controller,
                  children: [
                    Text(
                      rent.name,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.green),
                        Text(" ${rent.rating}"),
                        SizedBox(width: 20),
                        Icon(Icons.event_seat),
                        Text(" ${rent.seats} seats"),
                      ],
                    ),

                    SizedBox(height: 20),

                    Text("Price: ${rent.price}",
                        style: TextStyle(fontSize: 20)),

                    SizedBox(height: 10),

                    Text("Brand: ${car.brend}",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
