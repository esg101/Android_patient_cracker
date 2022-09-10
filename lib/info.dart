// To parse this JSON data, do
//
//     final patientInfo = patientInfoFromJson(jsonString);

import 'dart:convert';

PatientInfo patientInfoFromJson(String str) => PatientInfo.fromJson(json.decode(str));

String patientInfoToJson(PatientInfo data) => json.encode(data.toJson());

class PatientInfo {
  PatientInfo({
    required this.patient,
  });

  Patient patient;

  factory PatientInfo.fromJson(Map<String, dynamic> json) => PatientInfo(
    patient: Patient.fromJson(json["Patient"]),
  );

  Map<String, dynamic> toJson() => {
    "Patient": patient.toJson(),
  };
}

class Patient {
  Patient({
    required this.p1,
    required this.p2,
    required this.p3,
  });

  P1 p1;
  P2 p2;
  P1 p3;

  factory Patient.fromJson(Map<String, dynamic> json) => Patient(
    p1: P1.fromJson(json["p1"]),
    p2: P2.fromJson(json["p2"]),
    p3: P1.fromJson(json["p3"]),
  );

  Map<String, dynamic> toJson() => {
    "p1": p1.toJson(),
    "p2": p2.toJson(),
    "p3": p3.toJson(),
  };
}

class P1 {
  P1({
    required this.address,
    required this.admittedOn,
    required this.age,
    required this.bloodGroup,
    required this.email,
    required this.medicalHistory,
    required this.notes,
    required this.patientName,
    required this.priority,
    required this.sex,
  });

  String address;
  String admittedOn;
  int age;
  String bloodGroup;
  String email;
  String medicalHistory;
  String notes;
  String patientName;
  String priority;
  String sex;

  factory P1.fromJson(Map<String, dynamic> json) => P1(
    address: json["Address"],
    admittedOn: json["Admitted on"],
    age: json["Age"],
    bloodGroup: json["Blood Group"],
    email: json["Email"],
    medicalHistory: json["Medical History"],
    notes: json["Notes"],
    patientName: json["Patient Name"],
    priority: json["Priority"],
    sex: json["Sex"],
  );

  Map<String, dynamic> toJson() => {
    "Address": address,
    "Admitted on": admittedOn,
    "Age": age,
    "Blood Group": bloodGroup,
    "Email": email,
    "Medical History": medicalHistory,
    "Notes": notes,
    "Patient Name": patientName,
    "Priority": priority,
    "Sex": sex,
  };
}

class P2 {
  P2({
    required this.address,
    required this.admittedOn,
    required this.age,
    required this.bloodGroup,
    required this.email,
    required this.notes,
    required this.patientName,
    required this.priority,
    required this.sex,
  });

  String address;
  String admittedOn;
  String age;
  String bloodGroup;
  String email;
  String notes;
  String patientName;
  String priority;
  String sex;

  factory P2.fromJson(Map<String, dynamic> json) => P2(
    address: json["Address"],
    admittedOn: json["Admitted on"],
    age: json["Age"],
    bloodGroup: json["Blood Group"],
    email: json["Email"],
    notes: json["Notes"],
    patientName: json["Patient Name"],
    priority: json["Priority"],
    sex: json["Sex"],
  );

  Map<String, dynamic> toJson() => {
    "Address": address,
    "Admitted on": admittedOn,
    "Age": age,
    "Blood Group": bloodGroup,
    "Email": email,
    "Notes": notes,
    "Patient Name": patientName,
    "Priority": priority,
    "Sex": sex,
  };
}
