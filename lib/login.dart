import 'package:flutter/material.dart';
import 'home.dart';
import 'DummyMahasiswa.dart';

class login extends StatelessWidget {
  const login({super.key});

  get mahasiswas => null;


  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text('E-LEARNING', style :   TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('UPNYK', style :   TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 100,),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username'
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password'
                    )
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: (){
                      if (usernameController.text == 'username' &&
                          passwordController.text == 'password') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => home(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Login Gagal. Coba lagi.'),
                          ),
                        );
                      }
                      // while (true) {
                      //   Mahasiswa? mahasiswa = mahasiswas.firstWhere(
                      //           (mahasiswa) =>
                      //       mahasiswa.username == usernameController.text &&
                      //           mahasiswa.password == passwordController.text,
                      //       orElse: () => null);
                      //
                      //
                      //   if (mahasiswa != null) {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => home(),
                      //       ),
                      //     );
                      //     break;
                      //   } else {
                      //     ScaffoldMessenger.of(context).showSnackBar(
                      //       SnackBar(
                      //         content: Text('Login Gagal. Coba lagi.'),
                      //       ),
                      //     );
                      //   }
                      // };
                    },
                    child: Text('Masuk')
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
