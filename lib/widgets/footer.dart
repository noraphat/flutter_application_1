import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  String footerName = 'For footer';

  void _changeFooterName() {
    setState(() {
      footerName = 'Noraphat Chatthin';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$footerName'),
        ElevatedButton(onPressed: _changeFooterName, child: Text('Cliked Me'))
      ],
    );
  }
}
