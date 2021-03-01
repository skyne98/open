import 'package:flutter/material.dart';

class TripTab extends StatefulWidget {
  TripTab({Key key}) : super(key: key);

  @override
  _TripTabState createState() => _TripTabState();
}

class _TripTabState extends State<TripTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Trip"),
    );
  }
}
