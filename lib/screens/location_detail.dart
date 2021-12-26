import 'package:flutter/material.dart';
import 'package:flutter_app_pilot/notifiers/location.dart';
import 'image_banner.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    final locationDetails = Location.fetchById(_locationID);
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi flutter"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ImageBanner("assets/images/sample.png"),
            ...textSections(locationDetails)
          ]),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((eachLocation) =>
            TextSection(eachLocation.title, eachLocation.body))
        .toList();
  }
}
