import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Akhil'),
              accountEmail: Text('Test@123.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green.shade200,
                child: Text('AM'),
              ),
            ),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Category'),
              trailing: Icon(Icons.category_rounded),
              onTap: () => Navigator.of(context).pushNamed("/a"), //Route
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Testy App'),
      ),
    );
  }
}
