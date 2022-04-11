import 'package:flutter/material.dart';
import 'nav.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Belajar Flutter",
    home: NavigationDrawer(),
  ));
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
            backgroundColor: Colors.pink[800],
            flexibleSpace: Container(
              decoration: BoxDecoration(color: Colors.pink[700], gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: <Color>[])),
            ),
          ),
          body: Container(
            alignment: Alignment.center,
            decoration: new BoxDecoration(
              image: DecorationImage(image: AssetImage('asset/image/bc.jpeg'), fit: BoxFit.cover),
            ),
          ),
          drawer: DrawerWidget(),
        ));
  }
}
