// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

//สร้าง MyApp Widget ที่ extends StatelessWidget
class MyApp extends StatelessWidget {
  // Stateless widget แสดงผลแค่อย่างเดียว ไม่สามารถเปลี่ยนแปลงได้
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(
          primaryColor: Colors.yellow[100], primarySwatch: Colors.amber),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  void initState() {
    super.initState();
    getExchangeRate();
  }

  Future <void> getExchangeRate() async{
    var url = "https://open.er-api.com/v6/latest/USD";
    var response = await http.get(Uri.parse(url));
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exchange Rate"),
          backgroundColor: Color.fromARGB(255, 215, 247, 190),
        ),
        body: Column(
            children: [],
        ),
        );
  }

  // List<Widget> getData(int count) {
  //   List<Widget> data = [];
  //   for (var i = 0; i < count; i++) {
  //     var menu = ListTile(
  //       title: Text('Menu ${i + 1}'),
  //       subtitle: Text('Subtitle ${i + 1}'),
  //       leading: Icon(Icons.account_circle),
  //       trailing: Icon(Icons.arrow_forward),
  //       onTap: () {
  //         print('You clicked on $i');
  //       },
  //     );
  //     data.add(menu);
  //   }
  //   return data;
  // }

  // void addNumber() {
  //   setState(() {
  //     if (number == 10) {
  //       number = 0;
  //     } else {
  //       number++;
  //     }
  //   });
  // }
}
