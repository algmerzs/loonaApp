import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String tag;

  const DetailPage(this.imagen, this.titulo, this.tag);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(62, 28, 85, 1),
        title: Text(""),
      ),
      body: ListView(
        children: [
          Positioned.fill(
              child: Hero(
                  tag: '$tag',
                  child: Image(
                      fit: BoxFit.fitWidth, image: NetworkImage('$imagen')))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0)
                .copyWith(top: 20.0),
            child: Center(
              child: Text('$titulo',
                  style: TextStyle(
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                      color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis \n \n At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          )
        ],
      ),
    );
  }
}
