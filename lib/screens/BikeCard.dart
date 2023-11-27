import 'package:bikes_rent_application_v/Data/BikeList.dart';
import 'package:bikes_rent_application_v/screens/monoBike.dart';
import 'package:flutter/material.dart';

import '../Data/BikeData.dart';

// ignore: must_be_immutable
class BikeCard extends StatelessWidget {
   const BikeCard({super.key, required this.bike,required this.index});
  final Bike bike;
  // ignore: prefer_typing_uninitialized_variables
  final index;
  // ignore: unused_field
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        height: height * 0.5,
        width: width * 0.5,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(20),
          //backgroundBlendMode:BlendMode.clear,
        ),
        child: ListTile(
            // ignore: avoid_print
            enabled: true,
          
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MonoBike(bike: BikeList.bike[index])),
              );
            },
            // title: Text(" "+bike.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Column(
              children: [
                const Padding(padding: EdgeInsets.all(10)),
                Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(bike.image, height: 200),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text(
                  bike.name,
                  style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text('Rent per day:₹${bike.prize}',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('Milage:${bike.mileage}', style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                
                Text(
                  'Engine:${bike.engine}', style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text('Color:${bike.color}', style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                
              ],
            )),
      ),
    );
  }
}
