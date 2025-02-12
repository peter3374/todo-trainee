import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class ConnectorNotDoneWidget extends StatelessWidget {
  const ConnectorNotDoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SolidLineConnector(
      color: Colors.grey,
      thickness: 2.5,
      space: 10,
    );
  }
}
