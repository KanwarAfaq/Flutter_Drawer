import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("K.M.Afaq"),
            accountEmail: Text("kanwar719@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://scontent-tpe1-1.xx.fbcdn.net/v/t1.6435-9/118157676_2755555428035278_7639763096991352467_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=e3f864&_nc_ohc=aUOe7xtufnsAX86idqW&_nc_ht=scontent-tpe1-1.xx&oh=32c4737b276d7a2a1cf00c58d9dbfc1e&oe=60AAD7BC"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("kmafaq786@gmail.com"),
            trailing: Icon(Icons.send),
          )
        ],
      ),
    );
  }
}
