import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'picture_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Movie List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> jsonResponse = [];
  List<PictureCard> cardList = [];

  @override
  void initState() {
    super.initState();
    makeCards();
  }

  void makeCards() async {
    String jsonData = await rootBundle.loadString('assets/film.json');
    jsonResponse = await json.decode(jsonData);
    setState(() {
      for (dynamic i in jsonResponse){
        cardList.add(
            PictureCard(i)
        );
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: cardList.length,
          itemBuilder: (BuildContext context, int index) {
            return cardList[index];
          },
        ),
      ),
    );
  }
}
