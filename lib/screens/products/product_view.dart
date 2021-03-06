import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductView extends StatelessWidget {
  ProductView(@PathParam() this.id, [@PathParam() this.section]);

  final String section;
  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product $id'),
      ),
      body: Center(
        child: Text('Product $id'),
      ),
    );
  }
}
