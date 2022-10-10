import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/internal/constants/Colors.dart';

class HousesShortInfoView extends StatelessWidget {
  final HouseDto value;
  const HousesShortInfoView({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderradiusCard)),
      elevation: elevationAll,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              value.name ?? '',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 5),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Effect - ${value.commonRoom}',
                textAlign: TextAlign.left,
                softWrap: true,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                value.ghost.toString(),
                textAlign: TextAlign.left,
                softWrap: true,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
