
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, 
      backgroundColor: const Color(0xff242134),
      appBar: AppBar(
        // backgroundColor: Colors.,
        elevation: 0,
        backgroundColor: const Color(0xff242134),
        title: Center(child: Text(widget.title)),

        actions: [
          Container(
              height: 5,
              width: 20,
              color: Colors.transparent,
              child: FittedBox(
                  child: Container(
                child: const Center(
                    child: Text(
                  "2",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                )),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.yellow),
              ))),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,10,0, 0), 
        child: Wrap(
          spacing: 5.w, 
          runSpacing: 3.h, 

          // crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: [
            Container(height: 10.h,  
            width: 45.w,

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.accents[0], ),), 
            Container(height: 10.h,  
            width: 45.w, 
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.accents[1], ),), 
            Container(height: 10.h,  
            width: 45.w,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.accents[5] ),), 
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        hoverColor: Colors.blueAccent, 
        // focusColor: Colors.accents[0],  
        backgroundColor: Colors.blueAccent,   
        splashColor: Colors.red, 
        onPressed: _incrementCounter,
        tooltip: 'Add a Note',
         heroTag: 'Note',
  label: Row(
    children: [Icon(Icons.note_add), Text('New Note')], 
  ), 
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
