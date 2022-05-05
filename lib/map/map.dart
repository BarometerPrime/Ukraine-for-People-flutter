import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class myMap extends StatefulWidget {
  myMap({Key? key}) : super(key: key);

  @override
  _myMapState createState() => _myMapState();
}

class _myMapState extends State<myMap> {
  late MapShapeSource _shapeSource;

  @override
  void initState() {
    _shapeSource = MapShapeSource.asset('assets/australia.json',
        shapeDataField: 'STATE_NAME');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          10,
          50,
          0,
          0,
        ),
        child: SfMaps(layers: [MapShapeLayer(source: _shapeSource)]),
      ),
    );
  }
}
