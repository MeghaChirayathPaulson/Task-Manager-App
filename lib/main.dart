import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
  }

class _MyHomePageState extends State<MyHomePage> {

  final TextEditingController titleController = TextEditingController();
  final TextEditingController detailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('TASK MANAGER APP'),
        actions: <Widget> [
          PopupMenuButton<String>(
            onSelected: (value){

            },
            itemBuilder: (BuildContext context) {
              return ["All","Completed","Incompleted"].map((option) {
               return PopupMenuItem(
                 value: option,
                 child: Text(option),
              );
               }).toList();
            },
            )
        ],
      ),

      body: Column(
        children: <Widget>[

        ],
        ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            builder: (context) => Dialog(
               child: Container(
                 padding: EdgeInsets.all(16),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: <Widget>[
                     TextField(
                       decoration: InputDecoration(hintText: 'Event'),
                       controller: titleController,
                       ),
                     SizedBox(
                      height: 8,
                       ),
                     TextField(
                        decoration: InputDecoration(hintText: 'Description'),
                        controller: detailController,
                      ),
                     SizedBox(
                        height: 8,
                      ),
                     TextButton(
                        onPressed: (){

                        },
                        child: Text("Add to calendar"),
                        )
                   ],
                 ),
               ),
             ), context: context,
             );
        }
      ),
    );
  }
  
}



