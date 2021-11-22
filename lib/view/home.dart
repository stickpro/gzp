import 'package:flutter/material.dart';
import 'package:gzp/services/google_sheet.dart';
import 'package:gzp/models/devices.dart';
import 'package:gzp/widgets/device_tile.dart';

class Home extends StatefulWidget {
  late List<Devices> devices = [];

  Home() {
    devices.clear();
  }

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var service = new GoogleSheetApi();

  Future loadData() async {
    var data = await service.loadAll();

    if (data != null) {
      setState(() {
        widget.devices.clear();
        widget.devices.addAll(data);
      });
    }
  }

  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Список Поверки'),
        elevation: 0.1,
        backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: widget.devices.length,
              itemBuilder: (ctx, index) {
                var device = widget.devices[index];

                return DeviceTile(
                  number: device.number ?? '',
                  nameOrg: device.nameOrg ?? '',
                  nameDevice: device.nameDevice ?? '',
                  deviceNumber: device.deviceNumber ?? '',
                  createdAt: device.createdAt ?? '',
                  lastCheckAt: device.lastCheckAt ?? '',
                  checkAt: device.checkAt ?? '',
                );
              })),
    );
  }
}
