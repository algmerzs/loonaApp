import 'package:flutter/material.dart';

Widget noticias(String imagen, String titNoticia, fechaNoticia, String tag) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Card(
      color: Color.fromRGBO(87, 59, 106, 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(0.0),
            width: 150,
            child:
                Hero(tag: '$tag', child: Image(image: NetworkImage('$imagen'))),
          ),
          Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 150.0,
                    child: Center(
                      child: Text("$titNoticia",
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                          softWrap: false,
                          style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    '$fechaNoticia',
                    style: TextStyle(color: Colors.grey[300]),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.grey[200]),
        ],
      ),
    ),
  );
}
