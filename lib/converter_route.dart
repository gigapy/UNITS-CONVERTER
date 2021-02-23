import 'package:category_widget/unit.dart';
import 'package:flutter/material.dart';

class ConverterRoute extends StatelessWidget {
  final Color color;

  final List<Unit> units;

  const ConverterRoute({
    @required this.units,
    @required this.color,
  }) : assert(units != null);

  @override
  Widget build(BuildContext context) {
    final unitWidget = units.map((Unit unit) {
      return Container(
        color: color,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      );
    }).toList();
    return ListView(children: unitWidget);
  }
}
