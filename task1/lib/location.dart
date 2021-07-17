import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  var lat;
  var long;
  getLoc() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    print(position);
    setState(() {
      lat = position.latitude;
      long = position.longitude;
    });
  }

  @override
  void initState() {
    getLoc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOCATION'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 50,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'LATITUDE: ' + lat.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'LONGITUDE: ' + long.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: getLoc, child: Icon(Icons.refresh))
          ],
        ),
      ),
    );
  }
}
