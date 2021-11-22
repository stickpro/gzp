class Devices {
  String? number;
  String? nameOrg;
  String? nameDevice;
  String? deviceNumber;
  String? createdAt;
  String? lastCheckAt;
  String? checkAt;

  Devices(
      {required this.number,
      required this.nameOrg,
      required this.nameDevice,
      required this.deviceNumber,
      required this.createdAt,
      required this.lastCheckAt,
      required this.checkAt});

  Devices.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    nameOrg = json['name_org'];
    nameDevice = json['name_device'];
    deviceNumber = json['created_at'];
    createdAt = json['created_at'];
    lastCheckAt = json['last_check_at'];
    checkAt = json['check_at'];
  }

  Map<String, dynamic> toJSON() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['number'] = this.number;
    data['name_org'] = this.nameOrg;
    data['name_device'] = this.nameDevice;
    data['device_number'] = this.deviceNumber;
    data['created_at'] = this.createdAt;
    data['last_check_at'] = this.lastCheckAt;
    data['check_at'] = this.checkAt;
    return data;
  }
}
