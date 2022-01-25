import 'package:flutter/material.dart';
void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Email'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Shawon'), accountEmail: Text('shawonhosen7@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://scontent.fdac5-2.fna.fbcdn.net/v/t31.18172-8/21167959_961895057285043_3208397447975729822_o.jpg?_nc_cat=101&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=NtvgaDQME64AX-GF4_A&_nc_oc=AQkGUek4-Js_KLe3KHBYM5jLwMLtAwZvJTqhbyEwgOBPKroj2M_wIL3mJeJhlHQYZg0&_nc_ht=scontent.fdac5-2.fna&oh=28740b21c5f6192c212c19f1e964c4f6&oe=61CFB588'),
              ),
            ),
            ListTile(
              title: Text('Inbox'),
              trailing: Icon(Icons.message),
            ),
            ListTile(
              title: Text('Draft'),
              trailing: Icon(Icons.drafts),
            ),
            ListTile(
              title: Text('Important'),
              trailing: Icon(Icons.label_important_rounded),
            ),
            ListTile(
              title: Text('Sent'),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              title: Text('Outbox'),
              trailing: Icon(Icons.outbox),
            ),
            ListTile(
              title: Text('Trash'),
              trailing: Icon(Icons.delete_rounded),
            )
          ],
        ),
      ),
    );
  }
}
