

import 'package:flutter/material.dart';

class DataSendToNext extends StatefulWidget {
  const DataSendToNext({ Key? key, required this.txtData }) : super(key: key);

final String txtData;

  @override
  _DataSendToNextState createState() => _DataSendToNextState();
}

class _DataSendToNextState extends State<DataSendToNext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("From Another Screen"),
      ),

      body:  Center(
      child: Text("Data from Another Screen: ${widget.txtData}") ,
    ),
      );
    
    
   
  }
}

