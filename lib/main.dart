import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled10/daily.dart';
import 'package:untitled10/navbar.dart';

var in1="";
var in2="";
var in3="";



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,

      ),
      home: const MyHomePage(title: 'Dashboard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      backgroundColor: Color(0xffe0e0e0),
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,

        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              height: 150,
              child:  ListTile(
                leading: Icon(Icons.directions_run,
                color: Colors.blue,
                size: 50,),
                title: Text('Exercises'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text('Total Time This Week',
                    style: TextStyle(
                      color: Colors.grey,
                    ),),

                    Text('No Data',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey,
                      ),),
                    SizedBox(
                      height: 2,
                    ),
                    Text('Weekly Goal: 150 min')
                  ],
                )

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 150,
              child:  ListTile(
                  leading:SvgPicture.asset('assets/Icons/footprint.svg',
                  width: 50,),
                  title: Text('Steps'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text('Total Today',
                        style: TextStyle(
                          color: Colors.grey,
                        ),),

                      Text('Not Connected',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey,
                        ),),
                      SizedBox(
                        height: 2,
                      ),
                      Text('Daily Goal: 10,000 steps')
                    ],
                  )

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 150,
              child:  ListTile(
                  leading: Icon(Icons.water_drop,
                  color: Colors.red,
                  size: 50,),
                  title: Text('A1C'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text('Past Year',
                        style: TextStyle(
                          color: Colors.grey,
                        ),),

                      Text('No Data',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey,
                        ),),
                      SizedBox(
                        height: 2,
                      ),
                      Text('Weekly Goal: 150 min')
                    ],
                  )

              ),
            ),
          ),

        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}


class OverlayPage extends StatefulWidget {
  @override
  State<OverlayPage> createState() => _OverlayPageState();
}

class _OverlayPageState extends State<OverlayPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> navbar()));
            },
            child: Container(
              color: Colors.black.withOpacity(0.5), // Semi-transparent background
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                    color: Color(0xffe0e0e0),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text('Diary Entry Guide'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Image.asset('assets/images/image1.jpeg',
                        fit: BoxFit.cover,),
                      ),
                    ),
                    Text('Diary'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                IconButton(onPressed: () {

                                }, icon: Icon(Icons.water_drop,
                                  color: Colors.red,
                                  size:50,)),
                                Text('Glucose')
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(onPressed: () {
                                    in1="Pressure";
                                    in2="Systolic";
                                    in3="Diastolic";
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> data()));
                                }, icon: Icon(Icons.monitor_heart,
                                  color: Colors.red,
                                  size:50,)),
                                Text('Pressure')
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(onPressed: () {
                                  in1="Weight";
                                  in2="Weight";
                                  in3="Body Fat";
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> data()));
                                }, icon: Icon(Icons.monitor_weight_outlined,
                                  color: Colors.blue,
                                  size:50,)),
                                Text('Weight')
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Text('Shortcuts'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child:Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Column(
                                 children: [
                                    IconButton(onPressed: () {

                                      }, icon: Icon(Icons.sync,
                                                    color: Colors.blue,
                                                    size:40,)),
                            Text('Sync Device')
                      ],
                      ),
                           Column(
                      children: [
                            IconButton(onPressed: () {

                            }, icon: Icon(Icons.camera_alt,
                            color: Colors.greenAccent,
                            size:40,)),
                            Text('Food Photo')
                            ],
                      ),
                        Column(
                      children: [
                          IconButton(onPressed: () {


                          }, icon: Icon(Icons.science_rounded,
                          color: Colors.amber,
                          size:40,)),
                          Text('Lab Results')
                      ],
                      ),
                      ],
                      ),
                      ),
                    ),

                  ],
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}


