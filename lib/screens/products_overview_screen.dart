import 'package:flutter/material.dart';
import '../widgets/gridview_builder.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: GridViewBuilder(),
    );
  }
}
