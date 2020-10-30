import 'package:flutter/material.dart';
import '2nd_page.dart';
import 'package:loonaApp/pages/detail_page.dart';
import 'package:loonaApp/widgets/noticias.dart';

class PrincipalPage extends StatelessWidget {
  void detalles(BuildContext context, imagen, titulo, tag) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) =>
                DetailPage('$imagen', '$titulo', '$tag')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            floating: true,
            backgroundColor: Color.fromRGBO(62, 28, 85, 1),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Cónoce a LOON△',
              ),
              centerTitle: true,
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://c.wallhere.com/photos/a6/0e/LOONA_K_pop_Asian_Korean_Chinese_Heejin_HyunJin_YeoJin-1774791.jpg!d'),
                    ),
                  ),
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Color.fromRGBO(62, 28, 85, 0.9),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0)
                      .copyWith(bottom: 65.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => detalles(
                            context,
                            'https://static.wikia.nocookie.net/loona/images/6/69/LOONA_favOriTe_album_cover.png/revision/latest/scale-to-width-down/340?cb=20200529202324&path-prefix=es',
                            'Loona Noticia',
                            '01'),
                        child: noticias(
                            'https://static.wikia.nocookie.net/loona/images/6/69/LOONA_favOriTe_album_cover.png/revision/latest/scale-to-width-down/340?cb=20200529202324&path-prefix=es',
                            'Loona Noticia',
                            '20 febrero',
                            '01'),
                      ),
                      GestureDetector(
                        onTap: () => detalles(
                            context,
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/180820_Loona_at_their_debut_showcase_%282%29.png/1200px-180820_Loona_at_their_debut_showcase_%282%29.png',
                            'Otra noticia',
                            '02'),
                        child: noticias(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/180820_Loona_at_their_debut_showcase_%282%29.png/1200px-180820_Loona_at_their_debut_showcase_%282%29.png',
                            'Otra noticia',
                            '9 Agosto',
                            '02'),
                      ),
                      GestureDetector(
                        onTap: () => detalles(
                            context,
                            'https://allthek.com/wp-content/uploads/2019/01/LOONA-2018-loo-CE-A0-CE-94-41540924-2000-1331.jpg',
                            'Loona en Naver',
                            '03'),
                        child: noticias(
                            'https://allthek.com/wp-content/uploads/2019/01/LOONA-2018-loo-CE-A0-CE-94-41540924-2000-1331.jpg',
                            'Loona en Naver',
                            '21 Septiembre',
                            '03'),
                      ),
                      GestureDetector(
                        onTap: () => detalles(
                            context,
                            'https://1.bp.blogspot.com/-unhaBxnrtlk/XupiZGZP4HI/AAAAAAAAXtk/-shGHvW5-homsBPGc6ZRN7gFLQ8PRoVLACLcBGAsYHQ/s1600/Screenshot_2020-06-17-13-34-31-1.png',
                            '¡So what rompe records!',
                            '04'),
                        child: noticias(
                            'https://1.bp.blogspot.com/-unhaBxnrtlk/XupiZGZP4HI/AAAAAAAAXtk/-shGHvW5-homsBPGc6ZRN7gFLQ8PRoVLACLcBGAsYHQ/s1600/Screenshot_2020-06-17-13-34-31-1.png',
                            '¡So what rompe records!',
                            '6 Octubre',
                            '04'),
                      ),
                      GestureDetector(
                        onTap: () => detalles(
                            context,
                            'https://0.soompi.io/wp-content/uploads/sites/8/2018/09/30142941/LOONA2.jpg?s=900x600&e=t',
                            '¿Nuevo concepto?',
                            '05'),
                        child: noticias(
                            'https://0.soompi.io/wp-content/uploads/sites/8/2018/09/30142941/LOONA2.jpg?s=900x600&e=t',
                            '¿Nuevo concepto?',
                            '21 Febrero',
                            '05'),
                      ),
                      GestureDetector(
                        onTap: () => detalles(
                            context,
                            'https://www.discjockeys.es/wp-content/uploads/2019/06/Loona-sac%C3%B3-un-teaser-llamado-La-Maison-LOONA-1024x576.jpg',
                            '¡Haseul regresa!',
                            '06'),
                        child: noticias(
                            'https://www.discjockeys.es/wp-content/uploads/2019/06/Loona-sac%C3%B3-un-teaser-llamado-La-Maison-LOONA-1024x576.jpg',
                            '¡Haseul regresa!',
                            '10 Diciembre',
                            '06'),
                      ),
                      GestureDetector(
                        onTap: () => detalles(
                            context,
                            'https://1.bp.blogspot.com/-wpj9b_isQ6M/XfRwOXdUqSI/AAAAAAAAVNQ/cmpETtvAGasmvuBpp2B5RR29tRt6LjC7ACLcBGAsYHQ/s1600/images%2B%252883%2529.jpeg',
                            '¡LOONA se convierte en el primer grupo de chicas K-Pop en alcanzar el número 1 en las listas de las mejores canciones y álbumes de iTunes de USA.',
                            '07'),
                        child: noticias(
                            'https://1.bp.blogspot.com/-wpj9b_isQ6M/XfRwOXdUqSI/AAAAAAAAVNQ/cmpETtvAGasmvuBpp2B5RR29tRt6LjC7ACLcBGAsYHQ/s1600/images%2B%252883%2529.jpeg',
                            '¡LOONA se convierte en el primer grupo de chicas K-Pop en alcanzar el número 1 en las listas de las mejores canciones y álbumes de iTunes de USA.',
                            '07 Marzo',
                            '07'),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    GestureDetector(
                      onDoubleTap: () => detalles(
                          context,
                          'https://pbs.twimg.com/media/DtXgiG0XQAAqNBG.jpg',
                          'Charts',
                          '08'),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Image(
                          image: NetworkImage(
                              'https://pbs.twimg.com/media/DtXgiG0XQAAqNBG.jpg'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                      child: Text(
                        '!Descubre el loonaverse!',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.purple,
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => SecPage())),
                        child: Text('¡Vamos allá!'),
                      ),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
