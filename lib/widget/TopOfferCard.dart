
import 'package:flutter/material.dart';

class TopOfferCard extends StatelessWidget {
  const TopOfferCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage("https://images.unsplash.com/photo-1510629954389-c1e0da47d414?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGZvb2RzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Pasta With Ham",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                    Text("italian recipe for you ",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  ],
                ),
              ),
              Text("30.99\$",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}