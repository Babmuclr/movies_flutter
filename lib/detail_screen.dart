import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final _movieData;
  const DetailScreen(dynamic this._movieData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_movieData['Title']),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(_movieData['Images'][0]),
            // Image(image: NetworkImage(_movieData['Poster'])),
            Text(_movieData['Title']),
            Text(_movieData['Year']),
            Text(_movieData['Genre']),
            Text(_movieData['Released']),
            Text(_movieData['Runtime']),
            Text(_movieData['Director']),
            Text(_movieData['Actors']),
            Text(_movieData['Country']),
            Text(_movieData['Language']),
          ],
        ),
      ),
    );
  }
}