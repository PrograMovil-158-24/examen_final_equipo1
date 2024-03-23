import 'package:flutter/material.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Vehicle List'),
        ),
        body: const Column(
          children: [Text('Here is a vehicle list')],
        ));
  }
}
