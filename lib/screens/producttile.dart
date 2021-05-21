import 'package:flutter/material.dart';
import 'package:makeupshop/models/makeupModel.dart';

class ProductTile extends StatelessWidget {
  Products product;
  ProductTile(this.product);

  // String signDollar = '$';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: product.imageLink == null
                      ? Image.network(
                          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fbetarill.com%2Fservices%2Fdetails%2FSE2525259C56F2BB853D&psig=AOvVaw2qGQV5aCbZkviCkswYMrI_&ust=1621698953813000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMi6u8SR2_ACFQAAAAAdAAAAABAJ')
                      : Image.network(product.imageLink)),
              Text(
                '${product.name}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text('${product.brand}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Row(
                children: [
                  Text('Current Price:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text('${product.price}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
                ],
              )
            ]),
      ),
    );
  }
}
