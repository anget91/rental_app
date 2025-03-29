import 'package:flutter/material.dart';
import 'package:rental_app/data/models/car.dart';
import 'package:rental_app/presentation/widgets/car_card.dart';
import 'package:rental_app/presentation/widgets/more_card.dart';

class CarDetails extends StatelessWidget {
  final Car car;
  const CarDetails({super.key, required this.car});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(car.model, style: TextStyle(fontSize: 20))),
      body: Column(
        children: [
          CarCard(
            car: Car(
              model: car.model,
              distance: car.distance,
              fuelCapacity: car.fuelCapacity,
              pricePerHour: car.pricePerHour,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xffF3F3F3),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/images/user.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Jhon Doe",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("\$4,253", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/maps.png'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                MoreCard(
                  car: Car(
                    model: car.model,
                    distance: car.distance,
                    fuelCapacity: car.fuelCapacity,
                    pricePerHour: car.pricePerHour,
                  ),
                ),
                SizedBox(height: 5),
                MoreCard(
                  car: Car(
                    model: car.model,
                    distance: car.distance,
                    fuelCapacity: car.fuelCapacity,
                    pricePerHour: car.pricePerHour,
                  ),
                ),
                SizedBox(height: 5),
                MoreCard(
                  car: Car(
                    model: car.model,
                    distance: car.distance,
                    fuelCapacity: car.fuelCapacity,
                    pricePerHour: car.pricePerHour,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
