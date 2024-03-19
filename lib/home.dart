import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upngacor/DummyMahasiswa.dart';
import 'profile.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Hi, Nama Mahasiswa'),
        actions: <Widget>[
          IconButton(icon: new Icon(Icons.person),
            onPressed:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => profile()
                  )
              );
            }
        )],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return ListTile(
              title: Text('User'),
              subtitle: Text('NIM'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => profile()
                    )
                );
              },
            );
          }
      ),
    );
  }
}
