import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';

class HousesShortInfoView extends StatelessWidget {
  final HouseDto value;
  const HousesShortInfoView({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              value.name ?? '',
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 5),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Effect - ${value.commonRoom}',
                textAlign: TextAlign.left,
                softWrap: true,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                value.ghost.toString(),
                textAlign: TextAlign.left,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
