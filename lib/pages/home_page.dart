import 'package:flutter/material.dart';
import 'package:neumorphic_challenge/components/GridItemWidget.dart';
import 'package:neumorphic_challenge/components/NeuIcon.dart';
import 'package:neumorphic_challenge/components/NeumorphicContainer.dart';
import 'package:neumorphic_challenge/components/SearchWidget.dart';

class NeumorphicApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Neumorphic App',
      theme: ThemeData(
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
          child: Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      NeuIcon(icon: Icons.arrow_back),
                      NeuIcon(icon: Icons.menu),
                      ],
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("Hi Dash,", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text("What would you like to have, we're offering some services.", style: TextStyle(fontSize: 16, color: Colors.grey)),
                ),
                SearchWidget(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    GridItemWidget(icon: Icons.filter_1, title: "Tosse",),
                    GridItemWidget(icon: Icons.filter_2, title: "Febre",),
                    ],
                    ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    GridItemWidget(icon: Icons.filter_3, title: "Tontura",),
                    GridItemWidget(icon: Icons.filter_4, title: "Dor",),
                    ],
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                  child: NeumorphicContainer(
                    height: 50,
                    width: 330,
                    padding: 10,
                    borderRadius: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.exit_to_app),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 2.5),
                        ),
                        Text("Logout", style: TextStyle(fontSize: 20),)
                      ],
                    ),
                     blurOffset: Offset(5,5)),
                )
              ],),
          )
        ),
      )
    );
  }
}