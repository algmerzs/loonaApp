import 'package:flutter/material.dart';
import 'package:loonaApp/widgets/miembro.dart';

class Miembros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverGrid.count(
            crossAxisCount: 2,
            children: <Widget>[
              miembro('Heejin', 'heejin.jpg'),
              miembro('Hyunjin', 'hyunjin.png'),
              miembro('Haseul', 'haseul.jpeg'),
              miembro('Yeojin', 'yeojin.jpg'),
              miembro('Vivi', 'vivi.jpg'),
              miembro('Choerry', 'choerry.jpg'),
              miembro('Kim Lip', 'kimlip.jpg'),
              miembro('Jinsoul', 'jinsoul.jpg'),
              miembro('Yves', 'yves.png'),
              miembro('Chuu', 'chuu.jpg'),
              miembro('Gowon', 'gowon.jpg'),
              miembro('Olivia Hye', 'oliviahye.png'),
            ],
          ),
        ],
      ),
    );
  }
}
