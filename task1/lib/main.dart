//@dart=2.9
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:scoped_model/scoped_model.dart';
import 'package:task1/cartmodel.dart';
import 'package:task1/cartpage.dart';
import 'package:task1/home.dart';
import 'package:task1/location.dart';

bool hasDark = false;
void main() => runApp(MyApp(
      model: CartModel(),
    ));

class MyApp extends StatefulWidget {
  final CartModel model;

  const MyApp({key, this.model}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<CartModel>(
      model: widget.model,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping Cart',
        home: Intro(),
        routes: {
          '/cart': (context) => CartPage(),
          '/home': (context) => HomePage(),
          '/loc': (context) => Location(),
        },
      ),
    );
  }
}

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HOME PAGE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/loc');
                },
                icon: Icon(Icons.location_on),
                label: Text('LOCATION')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                icon: Icon(Icons.shopping_cart),
                label: Text('SHOPPING CART'))
          ],
        ),
      ),
    );
  }
}
