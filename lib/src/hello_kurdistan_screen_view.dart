import 'package:flutter/material.dart';

class HelloKurdistanApp extends StatefulWidget {
  HelloKurdistanApp({Key? key}) : super(key: key);

  @override
  State<HelloKurdistanApp> createState() => _HelloKurdistanAppState();
}

class _HelloKurdistanAppState extends State<HelloKurdistanApp> {
  String _theName = 'Kurdistan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hello $_theName",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Divider(
              color: Colors.transparent,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_theName == 'Hooshyar') {
                    setState(() {
                      _theName = 'Kurdistan';
                    });
                  } else {
                    setState(() {
                      _theName = 'Hooshyar';
                    });
                  }
                },
                child: Text('change the name'))
          ],
        ),
      ),
    );
  }
}
