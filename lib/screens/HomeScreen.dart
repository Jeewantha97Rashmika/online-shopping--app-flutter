import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_store/authentication_service.dart';
import 'package:online_store/consrants.dart';
import 'package:online_store/screens/components/body.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"),
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/icons/search.svg",color: kTextColor,),),
          IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/icons/cart.svg",color: kTextColor,),),
          IconButton(onPressed: (){
            context.read<AuthenticationService>().signOut();

          }, icon:Icon(Icons.logout ,color: Colors.red,),),
          SizedBox(width: kDefaultPaddin /2,)
        ],
      ),
      body: Body(


      ),

    );
  }
}
