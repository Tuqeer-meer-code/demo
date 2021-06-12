// To parse this JSON data, do
//
//     final employee = employeeFromJson(jsonString);

import 'dart:convert';

List<Employee> employeeFromJson(String str) => List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x)));

String employeeToJson(List<Employee> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Employee {
  Employee({
    this.eid,
    this.cid,
    this.name,
    this.designation,
    this.province,
    this.district,
    this.tehsil,
    this.city,
  });

  int eid;
  int cid;
  String name;
  String designation;
  String province;
  String district;
  String tehsil;
  String city;

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
    eid: json["eid"],
    cid: json["cid"],
    name: json["name"],
    designation: json["designation"],
    province: json["province"],
    district: json["district"],
    tehsil: json["tehsil"],
    city: json["city"],
  );

  Map<String, dynamic> toJson() => {
    "eid": eid,
    "cid": cid,
    "name": name,
    "designation": designation,
    "province": province,
    "district": district,
    "tehsil": tehsil,
    "city": city,
  };
}
