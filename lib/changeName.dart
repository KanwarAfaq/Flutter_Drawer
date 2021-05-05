import 'package:flutter/material.dart';

import 'bg_image.dart';

class ChangeNAme extends StatelessWidget {
  const ChangeNAme({
    Key key,
    @required this.mydata,
    @required TextEditingController namecontroller,
  })  : _namecontroller = namecontroller,
        super(key: key);

  final String mydata;
  final TextEditingController _namecontroller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BgImage(),
        SizedBox(
          height: 20,
        ),
        Text(
          mydata,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          //obscureText: true,
          keyboardType: TextInputType.text,
          controller: _namecontroller,
          decoration: InputDecoration(
              hintText: "Enter Here",
              labelText: "Name",
              border: OutlineInputBorder()),
        )
      ],
    );
  }
}

// Card(

//                 //child: ChangeNAme(mydata: mydata, namecontroller: _namecontroller),
//               ),