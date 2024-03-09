import 'package:flutter/material.dart';
import 'package:untitled10/main.dart';
import 'package:untitled10/navbar.dart';
void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: First(),
  ));
}
class First extends StatelessWidget{
  const First({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.greenAccent,
                    child: Icon(Icons.handshake,
                    size: 150,),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  textfield(label: 'name', type: TextInputType.text,obsure: false
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  textfield(label: 'password', type: TextInputType.number,obsure: true
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 60,
                    width: 200,
                    child: ElevatedButton(onPressed: () => showDialog(context: context,
                      builder: (BuildContext context)=>Dialog(
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.task_alt,
                              color: Colors.green,
                              size: 90,),
                              SizedBox(height: 20,),
                              Text('Login successfully',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                              SizedBox(height: 20,),
                              SizedBox(
                                width: 200,
                                child: ElevatedButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Second()));
                                },
                                  child: Text('Next',style: TextStyle(color: Colors.white),),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                      child: Text('Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.greenAccent),),
                    ),
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
class Second extends StatelessWidget{
  const Second({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => First(),
                  ));
            },
            icon: Icon(Icons.arrow_back),style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white)),
          ),
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
                      textfield(label: 'age', type: TextInputType.number,obsure: false
                      ),
                      SizedBox(height: 40),
                      textfield(label: 'Weight', type: TextInputType.number,obsure: false
                      ),
                      SizedBox(height: 40),
                      textfield(label: 'height', type: TextInputType.number,obsure: false
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> navbar()));
                        },
                          child: Text('Next',style: TextStyle(color: Colors.white),),
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.greenAccent)),
                        ),
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
Widget textfield({required String label,required TextInputType type,bool obsure=false}){
  bool b=false;
  return TextField(
    obscureText: obsure,
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


