import 'package:flutter/material.dart';
import 'package:foodappws/widget/TopOfferCard.dart';
import 'package:foodappws/widget/myTitle.dart';

class FoodByCategory extends StatefulWidget {
  final String title;

  FoodByCategory(this.title);

  /* const FoodByCategory({Key? key}) : super(key: key);*/

  @override
  State<FoodByCategory> createState() => _FoodByCategoryState();
}

class _FoodByCategoryState extends State<FoodByCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            myTitle(title:widget.title + " New Foods & drinks", fontSize: 20),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.builder(itemBuilder: (context,index){
                return TopOfferCard();
              }) ,
            ),
          ],
        ),
      ),
    );
  }
}
