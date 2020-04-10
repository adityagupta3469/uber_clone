import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uber_clone/states/app_state.dart';
import 'screens/home.dart';


void main() {
  return runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: AppState(),)
  ],
    child: MyApp(),));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uber Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Uber Clone'),
    );
  }
}
