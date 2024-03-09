import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/navbar.dart';

import 'main.dart';
List<dynamic> dataList =
[];
final TextEditingController _out1=TextEditingController();
final TextEditingController _out2=TextEditingController();
class data extends StatefulWidget{
  const data({super.key});

  @override
  State<data> createState() => _dataState();
}

class _dataState extends State<data> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text(in1,style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.greenAccent,
        ),
        body: SingleChildScrollView(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Column(
                    children: [
                      textfield(label: '$in2', type: TextInputType.number,textout:_out1),
                      SizedBox(height: 40),
                      textfield(label: '$in3', type: TextInputType.number,textout: _out2),
                      SizedBox(height: 40),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){
                        if(in1=="Weight") {
                          dataList.add([1, _out1.text, _out2.text]);
                          _out2.text="";
                          _out1.text="";
                        }
                            else {
                          dataList.add([2, _out1.text, _out2.text]);
                          _out2.text="";
                          _out1.text="";
                        }
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> navbar()));
                      },
                        child: Text('back',),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.greenAccent)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
Widget textfield({required String label,required TextInputType type,required final TextEditingController textout}){
  bool b=false;
  return TextFormField(
    controller: textout,
    obscureText: false,
    decoration: InputDecoration(

      //suffix: Text('Kg',
      //   style: TextStyle(color: Colors.cyan),),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(color: Colors.cyan),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(20)
        ),
      ),
      labelText: label,
    ),
    keyboardType: type,
  );
}