import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/footer.dart';
import 'package:flutter_application_1/widgets/logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is homepage'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Logo(),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/about' ,
                  arguments: {
                    'email' : 'noraphat@gmail.com',
                    'phone' : '0929046554'
                  }
                  );
                }, 
                child: Text('Go to About Page'))
            ],
          ),
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}