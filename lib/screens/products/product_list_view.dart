import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_nav/router/app_router.gr.dart';

class ProductListView extends StatefulWidget {
  @override
  _ProductListViewState createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
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
              title: Text('Product $index'),
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
              onTap: () {
                AutoRouter.of(context).push(ProductRoute(id: "$index"));
              },
            ),
          ),
          itemCount: 400,
        ));
  }
}
