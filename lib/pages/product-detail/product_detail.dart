import 'package:flutter/material.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 300,
            child: Card(
              
              // color: Colors.blueAccent,
              child: InkWell(
                onTap: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
