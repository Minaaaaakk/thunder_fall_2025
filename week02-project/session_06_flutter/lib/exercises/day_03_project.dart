import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Digital Business Card', style: TextStyle(fontSize: 34, color: Colors.black),), backgroundColor: Colors.grey,),
      body: Center(
        child: Card(
          color: Colors.white70,
          margin: EdgeInsets.all(10.0),
          elevation: 15.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Colors.blue, width: 2),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
                SizedBox(height: 10),
                Text('Minjin Ganzorig', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                Text('Student at ICode Academy', style: TextStyle(fontSize: 16, color: Colors.grey),),
                Divider(height: 30, thickness: 2),
                ListTile(leading: Icon(Icons.phone, color: Colors.blue), title: Text('99988181', style: TextStyle(fontWeight: FontWeight.bold),), subtitle: Text('Phone number')),
                ListTile(leading: Icon(Icons.email, color: Colors.blue), title: Text('gminjin2004@gmail.com', style: TextStyle(fontWeight: FontWeight.bold),), subtitle: Text('E-mail address'),),
                Divider(height: 30, thickness: 2),
                Align(alignment: Alignment.centerLeft, child: Text('Skills:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),),
                SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.blue, width: 1),),
                      child: Text('Flutter', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.blue, width: 1),),
                      child: Text('Dart', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.blue, width: 1),),
                      child: Text('Python', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
