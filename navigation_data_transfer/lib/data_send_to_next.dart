

import 'package:flutter/material.dart';

class DataSendToNext extends StatefulWidget {
  const DataSendToNext({ Key? key, required this.txtData }) : super(key: key);

final String txtData;



  @override
  _DataSendToNextState createState() => _DataSendToNextState();
}

class _DataSendToNextState extends State<DataSendToNext> {

  String sendToBack = "" ;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("From Another Screen"),
      ),

      body:  Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
             Text("Data from Another Screen :-  ${widget.txtData}") ,

               TextField(
                  onChanged: (value){
sendToBack = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter data to send',
                  ),
                ),

              ElevatedButton(
                    child: Text("Send data to previous Screen"),
                    onPressed: () {
                      Navigator.pop(context,"dddd");
                    })


          ],
        ),
      )
    ),
      );
    
    
   
  }
}

