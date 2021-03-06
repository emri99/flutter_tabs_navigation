import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoritesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You don\'t have favorites yet !'),
          ],
        ),
      ),
    );
  }
}
