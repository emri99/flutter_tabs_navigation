import 'package:flutter/material.dart';

class PhonenumberView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone number'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'phoneNumber', icon: Icon(Icons.phone_android)),
            )
          ],
        ),
      ),
    );
  }
}
