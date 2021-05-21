import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:makeupshop/controller/apicontroller.dart';
import 'package:makeupshop/models/makeupModel.dart';
import 'package:makeupshop/screens/producttile.dart';
import 'package:makeupshop/services/apiservices.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ApiController productController = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'MakeUpX',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
            ),
            Expanded(
              child: Obx(
                () => StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: productController.prodsList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return ProductTile(productController.prodsList[index]);
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                ),
              ),
            )
          ],
        ));
  }
}
