import 'package:flutter/material.dart';
import 'package:online_store/consrants.dart';
import 'package:online_store/modles/Products.dart';
import 'package:online_store/screens/details/components/coloe_and_size.dart';
import 'package:online_store/screens/details/components/description.dart';
import 'package:online_store/screens/details/components/propduct_and_image.dart';


class Body extends StatelessWidget {
final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height:size.height ,
            child: Stack(children:<Widget> [
              Container(
                margin: EdgeInsets.only(top: size.height*0.4),
                padding: EdgeInsets.only(
                  top: size.height*0.12,
                  left: kDefaultPaddin,
                  right: kDefaultPaddin
                ),
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  )
                ),

                child: Column(

                  children:<Widget> [
                    ColorAndSize(product: product),
                    Description(product: product),
                  ],
                ),
              ),
              Product_and_image(product: product)
            ],
            ),
          )
        ],
      ),
    );
  }
}

