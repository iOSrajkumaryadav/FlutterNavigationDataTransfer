
import 'package:flutter/material.dart';
import 'package:navigation_data_transfer/data_send_to_next.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String txtValue = "";
String valueReturn = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value){
txtValue = value;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter data to send',
                ),
              ),
              MaterialButton(
                  child: Text("Send data to another Screen"),
                  onPressed: () async {
                   final result = await   Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  DataSendToNext(txtData: txtValue))
                    );

                   
    setState(() {
      valueReturn = result.toString();
    });
//  ScaffoldMessenger.of(context)
//       ..removeCurrentSnackBar()
//       ..showSnackBar(SnackBar(content: Text('$result')));



                  }
                  ),

                  Text("Received poped data from other screen: ${ valueReturn }")
            ],
          ),
        ),
      ),
    );
  }
}
