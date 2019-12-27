import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class TheBody extends StatefulWidget {
  @override
  _TheBodyState createState() => _TheBodyState();
}

class _TheBodyState extends State<TheBody> {
  List<int> numList;
  AudioCache player = AudioCache();
  @override
  void initState() {
    super.initState();
    numList = List<int>.generate(10, (index) => index + 1);
    player.load("1.wav");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spanis Audio"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage("images/logo.png"),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 2,
                    childAspectRatio: 3,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Container(
                        color: Color(
                                (Random().nextDouble() * 0xFFFFFF).toInt() << 5)
                            .withOpacity(1.0),
                        child: Center(
                            child: Text("${numList[index].toString()}",
                                style: TextStyle(fontSize: 40))),
                      ),
                      onTap: () {
                        player.play("${index + 1}.wav");
//                        setState(() {
//                          player.play("${index + 1}.wav");
//                        });
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
