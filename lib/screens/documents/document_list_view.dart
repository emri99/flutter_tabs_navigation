import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DocumentListView extends StatefulWidget {
  @override
  _DocumentListViewState createState() => _DocumentListViewState();
}

class _DocumentListViewState extends State<DocumentListView> {
  Map<int, bool> _checkedList = {};

  bool _isChecked(int index) {
    return _checkedList[index] ?? false;
  }

  void _setCheck(int index, bool checked) {
    setState(() {
      _checkedList[index] = checked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Documents list'),
        ),
        body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: (BuildContext context, int index) => GestureDetector(
            child: ListTile(
              title: Text('Document $index'),
              leading: Container(
                  width: 96,
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Checkbox(
                        value: _isChecked(index),
                        onChanged: (bool checked) => _setCheck(index, checked),
                      ),
                      Icon(Icons.picture_as_pdf),
                    ],
                  )),
              trailing: Icon(Icons.more_horiz),
            ),
          ),
          itemCount: 50,
        ));
  }
}
