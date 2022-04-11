import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.inbox,
              text: 'Inbox',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Inbox()),
                );
              }),
          _drawerItem(
              icon: Icons.outbox,
              text: 'Outbox',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Inbox()),
                );
              }),
          _drawerItem(
              icon: Icons.access_time_rounded,
              text: 'Spam',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Inbox()),
                );
              }),
          _drawerItem(
              icon: Icons.forum_outlined,
              text: 'Forums',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Inbox()),
                );
              }),
          _drawerItem(
              icon: Icons.feedback,
              text: 'Promos',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Inbox()),
                );
              }),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(color: Colors.pink[700]),
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage("asset/image/wendy.jpg"), fit: BoxFit.cover),
    ),
    accountName: Text('Wendy Mei Ika Nur Ainni'),
    accountEmail: Text('wendymeiikanurainni@gmail.com'),
  );
}

Widget _drawerItem({IconData? icon, required String text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

class Inbox extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final List nama = [
    "Renjun",
    "Shella F",
    "Shinta Dewi",
    "Hendery",
    "Novita",
    "Jisung",
    "Jeno",
    "Jesica",
    "Aulia",
  ];

  final List waktu = [
    "now",
    "3m",
    "5m",
    "10m",
    "22m",
    "1h",
    "2h",
    "4h",
    "7h",
  ];

  final gambar = [
    "asset/image/rj.jpeg",
    "asset/image/mv6.jpg",
    "asset/image/mv1.jpg",
    "asset/image/hd.jpg",
    "asset/image/mv5.jpg",
    "asset/image/DREAM 7.png",
    "asset/image/jn.jpeg",
    "asset/image/bc.jpeg",
    "asset/image/DREAM 6.png",
  ];
  final List title = [
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
    "Hello there!!",
  ];
  final List isi = [
    "Assalamuallaikum Wr. Wb",
    "Yok main",
    "wkwkwkw",
    "Lagi Apa?",
    "Ayo ke perpus",
    "heheheh",
    "taman melati semua indah",
    "hidihhhh",
    "Oke",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            title: Center(
              child: Text(
                'Inbox',
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
                icon: Icon(Icons.search),
              )
            ],
            backgroundColor: Colors.pink[800],
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      gambar[index],
                    ),
                  ),
                  title: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Text(
                            waktu[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                        Text('' + isi[index]),
                      ]),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('' + title[index]),
                      Icon(Icons.star_border),
                    ],
                  ),
                ),
              );
            },
            itemCount: nama.length,
          ),
        ));
  }
}
