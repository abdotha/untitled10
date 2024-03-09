import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/daily.dart';

class daily extends StatefulWidget{
  const daily({super.key});

  @override
  State<daily> createState() => _dataState();
}

class _dataState extends State<daily> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xffe0e0e0),
          appBar: AppBar(
            backgroundColor: Colors.greenAccent,
            title: Text('Data'),
          ),

          body: MyList(),


        )
    );
  }
}
class MyList extends StatelessWidget {
  // Sample list of items

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            height: 80,
            child: ListTile(
              title: dataList[index][0]==1 ?Text('Weight',style: TextStyle(fontWeight: FontWeight.bold),):Text('Pressure',style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: dataList[index][0]==1 ?Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Weight= ${dataList[index][1]}'),
                  Text('Body Fats= ${dataList[index][2]}'),
                ],
              ):Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Systolic= ${dataList[index][1]}',),
                  Text('Diastolic= ${dataList[index][2]}'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}