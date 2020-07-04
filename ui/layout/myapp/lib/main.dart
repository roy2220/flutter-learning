// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final Widget _titleSection = Container(
    padding: EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: 8,
                  ),
                  child: Text(
                    'Kandersteg, Switzerland',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  )),
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41'),
      ],
    ),
  );

  Widget _textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );

  static Container _buildButtonSection(Color color) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColumn(Icons.call, color, "CALL"),
          _buildButtonColumn(Icons.near_me, color, "ROUTE"),
          _buildButtonColumn(Icons.share, color, "SHARE"),
        ],
      ),
    );
  }

  static Column _buildButtonColumn(IconData icon, Color color, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: EdgeInsets.only(
            top: 8,
          ),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/lake.jpg',
              height: 240,
              fit: BoxFit.cover,
            ),
            _titleSection,
            _buildButtonSection(Theme.of(context).primaryColor),
            _textSection,
          ],
        ),
      ),
    );
  }
}
