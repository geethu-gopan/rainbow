import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
class rainbow extends StatefulWidget {
  const rainbow({Key? key}) : super(key: key);

  @override
  State<rainbow> createState() => _rainbowState();
}

class _rainbowState extends State<rainbow> {
  void playsound(int soundNumber){
    final player=AudioPlayer();
    player.play('audios/note$soundNumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('xylophone'),),
      body: Column(
      children: [
      buildExpanded(Colors.red,1),
      buildExpanded(Colors.orange),
        buildExpanded(Colors.yellowAccent),
        buildExpanded(Colors.green),
        buildExpanded(Colors.blueAccent),
        buildExpanded(Colors.indigo),
        buildExpanded(Colors.purple),


        ],
      ),
    );
  }

  Expanded buildExpanded(Color keycolor) {
    return Expanded(child: Container(
      color: keycolor,child:Center(child:TextButton(onPressed: (){}, child: Text('audio'))),
    ),
    );
  }
}
