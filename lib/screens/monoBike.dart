// ignore: file_names
import 'package:flutter/material.dart';

import '../Data/BikeData.dart';

class MonoBike extends StatelessWidget {
  const MonoBike({
    super.key,
    required this.bike,
  });
  final Bike bike;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(bike.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Image.asset(bike.image, height: 200),
            ),
            Text(
              bike.name,
              style: const TextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              // ignore: prefer_interpolation_to_compose_strings
              '    Rent per day: ₹' + bike.prize + "/-",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              'Milage: ${bike.mileage}',
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(
              'Engine: ${bike.engine}',
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(
              'Color: ${bike.color}',
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
           // Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, height * 0.001)),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.green[500],
              ),
              height: height * 0.1,
              width: width,
              child: const Center(
                  child: Text(
                'Pay',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
      ),
    );
  }
}
