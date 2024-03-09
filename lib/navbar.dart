import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/main.dart';
import 'package:untitled10/dailydata.dart';

class navbar extends StatefulWidget{
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.add_card), label: 'Dashboard'),

          NavigationDestination(icon: Icon(Icons.add), label: 'Add'),

          NavigationDestination(icon: Icon(Icons.book), label: 'Daily'),

        ],
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentIndex=index;
          }
          );

        },
      ),
    ),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),

        )
    );
  }
}



List<Widget>screens=
    [
MyHomePage(title: 'Dashboard'),
OverlayPage(),
  daily() ,
    ];