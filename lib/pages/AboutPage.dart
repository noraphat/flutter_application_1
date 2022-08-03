import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, String> company = ModalRoute.of(context)!.settings.arguments as Map<String,String>; 
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      body: Container(
        child: Column(
          children: [
            Text('${company['email']}'),
            Text('${company['phone']}'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go to HomePage')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contact');
                },
                child: Text('Go to Contact Page'))
          ],
        ),
      ),
    );
  }
}
