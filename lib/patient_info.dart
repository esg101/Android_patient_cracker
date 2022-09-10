import 'package:flutter/material.dart';

class PatientInfo extends StatelessWidget {
  const PatientInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: CircleAvatar(
                  radius: 102,
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1662664578053-997b978c7f0c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                ),
              ),
              const Divider(),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Name: Hey', style: TextStyle(fontSize: 22), textAlign: TextAlign.left,),
                    Text('Age: Age', style: TextStyle(fontSize: 22), textAlign: TextAlign.left,),
                    Text('Sex: PatientName', style: TextStyle(fontSize: 22), textAlign: TextAlign.left,),
                    Text('E-mail/Phone: PatientName', style: TextStyle(fontSize: 22), textAlign: TextAlign.left,),
                    Text('Blood Group: PatientName', style: TextStyle(fontSize: 22), textAlign: TextAlign.left,),
                    Text('Address: PatientName', style: TextStyle(fontSize: 22), textAlign: TextAlign.left,),
                    Text('Priority: PatientName', style: TextStyle(fontSize: 22), textAlign: TextAlign.left,),
                    Text('Admitted on: PatientName', style: TextStyle(fontSize: 22), textAlign: TextAlign.left,),
                    Text('Medical History: PatientName', style: TextStyle(fontSize: 22), textAlign: TextAlign.left,),
                    Text('Notes: PatientName', style: TextStyle(fontSize: 22), textAlign: TextAlign.left,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}