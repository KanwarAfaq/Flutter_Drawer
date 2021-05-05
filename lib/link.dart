import 'package:awesom_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'con1.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("All Links"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.all(8),
                        alignment: Alignment.center,
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.pink,
                                  blurRadius: 10,
                                  offset: Offset(2, 5))
                            ],
                            color: Colors.teal,
                            gradient: LinearGradient(
                                colors: [Colors.yellow, Colors.teal])),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Con1()),
                            );
                          },
                          child: Text("Container"),
                        )),
                    Container(
                        padding: EdgeInsets.all(8),
                        alignment: Alignment.center,
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.pink,
                                  blurRadius: 10,
                                  offset: Offset(2, 5))
                            ],
                            color: Colors.teal,
                            gradient: LinearGradient(
                                colors: [Colors.blue, Colors.purple])),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          child: Text("Drawer"),
                        )),
                    Container(
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.pink,
                                blurRadius: 10,
                                offset: Offset(2, 5))
                          ],
                          color: Colors.teal,
                          gradient: LinearGradient(
                              colors: [Colors.yellow, Colors.pink])),
                      child: Text(
                        "This is a 3rd box",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
