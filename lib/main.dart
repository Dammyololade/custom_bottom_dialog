import 'package:flutter/material.dart';

import 'CustomBottomDialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Dialog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom dialog"),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /// An action button we can use to trigger t
            /// he customized widget
            FlatButton(onPressed: (){
              /// use this function to invoke the widget as a dialog
              showDialog(context: context,
                builder: (context) => CustomBottomDialog()
              );

            }, child: Text("Show Dialog"))
          ],
        ),
      ),
    );
  }
}
