import 'package:awesom_flutter/pages/Utils/constants.dart';
import 'package:awesom_flutter/pages/home_page.dart';
import 'package:awesom_flutter/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Awesome_flutter",
    home:
        Constants.prefs.getBool("loggedin") == true ? HomePage() : LoginPage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}
