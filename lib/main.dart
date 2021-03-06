import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:online_store/screens/HomeScreen.dart';
import 'package:online_store/signUp.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:online_store/authentication_service.dart';



Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      Provider<AuthenticationService>
          (create: (_)=> AuthenticationService (FirebaseAuth.instance)),
      StreamProvider(create: (context)=> context.read<AuthenticationService>().authStateChanges)
    ],
    child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

      home: AuthenticationWrapper(),
),  );
  }
}

class AuthenticationWrapper extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null){
     return HomeScreen();

    }
    return SignInPage();

  }
}