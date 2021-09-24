import 'package:flutter/material.dart';
import 'package:flutter_application/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                      'https://i1.sndcdn.com/artworks-000240098219-nlours-t500x500.jpg'),
                ),
                accountName: Text('Roronoa Zoro'),
                accountEmail: Text('roronoa@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              subtitle: Text('tela de início'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Logout'),
              subtitle: Text('Finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Center(child: Text('Home Page')),
        actions: [
          CustomSwift(),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 230,
          ),
          Center(
            child: Text('Seja bem vindo Roronoa Zoro'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwift extends StatelessWidget {
  const CustomSwift({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isdartTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
