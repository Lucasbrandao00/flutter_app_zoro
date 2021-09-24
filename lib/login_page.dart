import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: ClipOval(
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaw4t8DM1Sen3UBSX6yUHK45TYF_yn1dXyNCS8A_cqaHgaS7FrlRKBzwJBwPXKHIJLoyU&usqp=CAU"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (text) {
                      email = text;
                    },
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (text) {
                      password = text;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    onPressed: () {
                      if (email == 'roronoa@gmail.com' && password == '123') {
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        print('Login incorreto');
                      }
                    },
                    child: Text('Entrar '),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(color: Colors.redAccent[700]),
        _body(),
      ],
    ));
  }
}
