import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DocumentViewerView extends StatelessWidget {
  DocumentViewerView(@PathParam() this.id, [@PathParam() this.section]);

  final String section;
  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Document $id'),
      ),
      body: Center(
        child: Text('Document $id'),
      ),
    );
  }
}
