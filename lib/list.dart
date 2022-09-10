import 'package:flutter/material.dart';

class PatientList extends StatelessWidget {
  const PatientList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Text('''{
      "Patient": {
      "p1": {
      "Address": "Hno 603 , punjab",
      "Admitted on": "12-6-22",
      "Age": 21,
      "Blood Group": "B+",
      "Email": "sukh@gmail.com",
      "Medical History": "none",
      "Notes": "Handle with care",
      "Patient Name": "Sukoon Singh",
      "Priority": "low",
      "Sex": "Female"
      },
      "p2": {
      "Address": "room no 69 whores house, gay nation",
      "Admitted on": "69-69-69",
      "Age": "20",
      "Blood Group": "Gay+",
      "Email": "suckscocks@gmail.com",
      "Notes": "Very gay , be aware",
      "Patient Name": "Amritpal",
      "Priority": "High",
      "Sex": "Others"
      },
      "p3": {
      "Address": "Hno 34/3 , rama mandi , delhi",
      "Admitted on": "3-5-20",
      "Age": 64,
      "Blood Group": "O+",
      "Email": "ravijii@gmail.com",
      "Medical History": "1.Hernia operated 2.high Bp",
      "Notes": "Has been reviewed at many different hospitals ",
      "Patient Name": "Ravi",
      "Priority": "High",
      "Sex": "Male"
      }
      }
      }''', style: TextStyle(fontSize: 18, color: Colors.white),),
    );
  }
}
