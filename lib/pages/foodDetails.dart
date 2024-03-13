import 'package:flutter/material.dart';
import 'package:foodappws/utillites/recipeModel.dart';


class FooddetalisPage extends StatefulWidget {
  final RecipeModel food;
  FooddetalisPage(this.food);

 /* const FooddetalisPage({Key? key}) : super(key: key);*/

  @override
  State<FooddetalisPage> createState() => _FooddetalisPageState();
}

class _FooddetalisPageState extends State<FooddetalisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(widget.food.title),
      ),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0,left: 5),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(widget.food.imageUrl),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0,left: 8),
                  child: Row(


                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(widget.food.title,style:TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                            Row(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text(widget.food.description),


                                  ],
                                ),

                                Text("\$" + widget.food.price ,style:TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo,fontSize: 30,),),

                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
