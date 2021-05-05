import 'dart:convert';

import 'package:awesom_flutter/pages/Utils/constants.dart';
import 'package:awesom_flutter/pages/login_page.dart';
import 'package:flutter/material.dart';

//import '../changeName.dart';
import 'package:http/http.dart' as http;
import '../drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _DrwrState createState() => _DrwrState();
}

class _DrwrState extends State<HomePage> {
  TextEditingController _namecontroller = TextEditingController();
  var mydata = "Your Input";
  var url = "https://jsonplaceholder.typicode.com/posts";
  //var url = "https://www.facebook.com/K.M.AFAQ/";
  var data;
  @override
  void initState() {
    super.initState();
    getData();
  }

  Future getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("Drawer"),
        actions: [
          IconButton(
              icon: Icon(Icons.outbox),
              onPressed: () {
                Constants.prefs.setBool("loggedin", false);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              })
        ],
      ),
      body: Center(
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      data[index]["title"],
                    ),
                    subtitle: Text("Body: ${data[index]["body"]}"),
                    leading: Image.network(
                      "https://scontent.ftpe5-1.fna.fbcdn.net/v/t1.6435-9/118157676_2755555428035278_7639763096991352467_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=e3f864&_nc_ohc=c04E1V3Ia8MAX-E6HIo&_nc_ht=scontent.ftpe5-1.fna&oh=f9373cf13236d0dc9568c68f52cab09b&oe=60B2C0BC",
                    ),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mydata = _namecontroller.text;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
          setState(() {});
        },
        child: Icon(Icons.refresh_outlined),
      ),
    );
  }
}
