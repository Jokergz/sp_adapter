import 'package:flutter/material.dart';
import 'package:sp_adapter/sp_adapter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) {
        SPAdapter.initWidth(375, MediaQuery.of(context).size.width);
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaleFactor: 1.0,
          ),
          child: child!,
        );
      },
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.black12,
            ),
            Container(
              width: 375.sp,
              height: 100.sp,
              color: Colors.black26,
              alignment: Alignment.center,
              child: Text('20.sp', style: TextStyle(fontSize: 20.sp)),
            ),
          ],
        ),
      ),
    );
  }
}
