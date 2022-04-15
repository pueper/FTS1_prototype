// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'fts1 prototype',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FTS1 prototype',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('FTS1 prototype'),
          ),
          body: Builder(
            builder: (context) => Column(
              children: [
                Flexible(
                  child: Container(),
                ),
                Text("Al in een groen, groen, groen, groen knollenland \r\nDaar zaten twee haasjes heel parmant\r\nEn de een die blies de fluitefluitefluit\r\nEn de ander sloeg de trommel\r\nDaar kwam opeens een jager, jagerman\r\nEn die heeft er één geschoten\r\nEn dat heeft, zo je denken, denken kan\r\nDe ander zeer verdroten"),
                Flexible(
                  child: Container(),
                ),
                ElevatedButton(
                  child: Container(
                    child: Image.asset('assets/images/IMG_20161009_191321.jpg'),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/IMG_20161009_191321.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageTwo()),
                    );
                  },
                )
              ],
            ),
          )),
    );
  }
}

class PageTwo extends StatefulWidget {
  PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
@override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Column(
        children: [
          Flexible(child: Container()),
          Row(
            children: [
              Flexible(child: Container()),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Press me!'),
                  ),
                  const Divider(height: 20.0,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Press me!'),
                  ),
                ],
              ),
              const Divider(indent: 40.0,),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Press me!'),
                  ),
                  const Divider(height: 20.0,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Press me!'),
                  ),
                ],
              ),
              Flexible(child: Container()),
            ],
          ),
          Flexible(child: Container()),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go back!'),
          ),
        ],
      ),
    );
  }
}
