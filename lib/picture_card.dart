import 'package:flutter/material.dart';
import 'package:movies/detail_screen.dart';

class PictureCard extends StatelessWidget {

  final dynamic _data;

  PictureCard(this._data);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen(
            _data
          );
        }));
      },
      child: Card(
        shadowColor: Colors.lightBlueAccent,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image.network(_data['Images'][0]),
            // Image.network(_data['Poster']),
            ListTile(
              leading: Icon(Icons.movie),
              title: Text(_data['Title']),
              subtitle: Text(_data['Genre']),
            ),
          ],
        ),
      ),
    );
  }
}