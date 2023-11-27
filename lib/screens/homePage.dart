
import 'package:bikes_rent_application_v/Data/BikeList.dart';
import 'package:bikes_rent_application_v/screens/BikeCard.dart';
import 'package:flutter/material.dart';

import '../Data/BikeData.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   // ignore: non_constant_identifier_names
   List<Bike> filter_list=List.from(BikeList.bike);
   void updateList(String value){
    setState(() {
       // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
       filter_list=BikeList.bike.where((element)=>element.name.toLowerCase().
       contains(value.toLowerCase())).toList();
    });
   
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(31, 74, 73, 73),
        title:  TextField(
          onChanged:(value) => updateList(value),
          keyboardType: TextInputType.name,
      
          smartDashesType: SmartDashesType.enabled,
          cursorWidth: 2.0,
          cursorColor: Colors.white,
          decoration: const InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.white, fontSize: 15),
              fillColor: Colors.white,
              
              border: OutlineInputBorder(
                borderSide 
                
                : BorderSide(color: Colors.white),
                 borderRadius 
                :  BorderRadius.all( Radius.circular(400.0)),
              
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            //  suffixIcon: Icon(
           //     Icons.filter_alt_outlined,
           //     color: Colors.white,
            //  )
              ),
        ),
      ),
      body: filter_list.isEmpty?const Center(child: Text('Result not found',style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),)):
      ListView.builder(
          itemCount:filter_list.length,
          scrollDirection :Axis.vertical,
           itemBuilder:(context,index)=>
             BikeCard(bike:filter_list[index], index: index,),
           ),
      
    );
  
  }
}
