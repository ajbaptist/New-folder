import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:task1/main.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HOME PAE'),
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
                icon: Icon(Icons.shopping_cart),
                label: Text('SHOPPING CART'))
          ],
        ),
      ),
    );
  }
}
