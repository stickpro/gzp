import 'package:flutter/material.dart';

class DeviceTile extends StatelessWidget {
  final String number,
      nameOrg,
      nameDevice,
      deviceNumber,
      createdAt,
      lastCheckAt,
      checkAt;

  DeviceTile(
      {required this.number,
      required this.nameOrg,
      required this.nameDevice,
      required this.deviceNumber,
      required this.createdAt,
      required this.lastCheckAt,
      required this.checkAt});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: ListTile(
        title: Text(
          '$nameDevice № $deviceNumber',
        ),
        subtitle: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    nameOrg,
                  )),
            ),
            Expanded(
              flex: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.blue,
                    width: 8.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: Text(
                    lastCheckAt.substring(0, 10),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.red.shade400,
                    width: 8.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: Text(
                    checkAt.substring(0, 10),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
