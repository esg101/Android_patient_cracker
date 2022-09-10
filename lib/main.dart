import 'package:android_patient_cracker/home_page.dart';
import 'package:android_patient_cracker/list.dart';
import 'package:android_patient_cracker/patient_info.dart';
import 'package:flutter/material.dart';
import 'package:android_patient_cracker/register.dart';
import 'package:android_patient_cracker/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => Mylogin(),
      'register': (context) => Myregister(),
      'my_home': (context) => MyHomePage(),
      'patient_info': (context) => PatientInfo(),
      'list' : (context) => PatientList(),
    },
  ));
}