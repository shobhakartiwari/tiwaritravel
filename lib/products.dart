import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);
  // ----test comment
  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/macbook.jpg'),
          Text(products[index], style: TextStyle(color: Colors.deepPurple))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }
}