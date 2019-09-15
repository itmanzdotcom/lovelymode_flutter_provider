import 'package:flutter/material.dart';
import 'package:flutter_provier_1/theme.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(
                onPressed: () => {_themeChanger.setTheme(ThemeData.dark())},
                child: Text("Dark Mode")),
            FlatButton(
                onPressed: () => {_themeChanger.setTheme(ThemeData.light())},
                child: Text("Light Mode"))
          ],
        ),
      ),
    );
  }
}
