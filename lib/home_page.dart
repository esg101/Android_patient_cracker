import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    const drawerHeader = UserAccountsDrawerHeader(accountName: Text('Doc'),
      accountEmail: Text('doc@gmail.com'),
      currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.white,
          child: FlutterLogo(size: 32.0)
      ),
    );

    final drawerItems = ListView(
      children: const [
        drawerHeader,
        ListTile(
          title: Text('Settings'),
          onTap: null,
        ),
        ListTile(
          title: Text('Log Out'),
          onTap: null,
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Hospital'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 12.0, left: 24.0, right: 24.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Patient Name',
                    focusColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 50,
                  width: size.width,
                  child: Text('Wassup Doc!', textAlign: TextAlign.center, style: GoogleFonts.alike(fontSize: 40),),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomCard(docName: 'New patients', specialize: '5'),
                      CustomCard(docName: 'NewAppointments', specialize: '2'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomCard(docName: 'Admitted', specialize: '15'),
                      CustomCard(docName: 'Discharged', specialize: '9'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomCard(docName: 'Medical Report', specialize: '115'),
                      CustomCard(docName: 'Notes', specialize: '135'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.docName, required this.specialize}) : super(key: key);

  final String docName;
  final String specialize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){ Navigator.pushNamed(context, 'list');},
      child: Card(
        color: Colors.grey,
        child: SizedBox(
          height: 170,
          width: 170,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(image: NetworkImage('https://i.stack.imgur.com/Pr9Me.png'), fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Column(
                  children: [
                    Text(docName, style: const TextStyle(fontSize: 20),),
                    Text(specialize, style: const TextStyle(fontSize: 20,color: Colors.white),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}