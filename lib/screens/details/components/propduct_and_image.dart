import 'package:flutter/material.dart';
import 'package:online_store/modles/Products.dart';

import '../../../consrants.dart';

class Product_and_image extends StatelessWidget {
  final Product product;

  const Product_and_image({Key key, this.product}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Aristocratic Hand Bag",style: TextStyle(color: Colors.white),),
          Text("Office Code",style:Theme.of(context).textTheme.headline4.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ) ),
          Row(

            children:<Widget> [
              RichText(text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Price\n"
                    ),
                    TextSpan(
                        text: "\$${ product.price}",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        )
                    )
                  ]
              )
              ),
              SizedBox(width: kDefaultPaddin,),
              Expanded(child: Image.asset(product.image,
                fit: BoxFit.fill,))
            ],
          )
        ],
      ),

    );
  }
}
