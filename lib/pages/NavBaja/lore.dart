import 'package:flutter/material.dart';
import 'package:loonaApp/widgets/tooltip.dart';

class Lore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Center(
            child: Text(
              '¡Presiona para ver los tooltip!',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
          tooltip("MV'S de Loona",
              'https://0.soompi.io/wp-content/uploads/sites/8/2018/08/07021715/loona.jpg.png?s=900x600&e=t'),
          tooltip("Miembros de Loona",
              'https://0.soompi.io/wp-content/uploads/sites/8/2018/10/12173102/LOONA.jpg?s=900x600&e=t'),
          tooltip("Presentaciones de Loona",
              'https://pbs.twimg.com/media/ESqGomfUUAEix9K.jpg'),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Text(
              "Jaden Jeong (Jeong Byun Ki) es el productor y principal responsable de la formación de LOOΠΔ, su primer gran proyecto fue en WOOLLIM Entertainment, siendo uno de los responsables de la creación de LOVELYZ. En 2016 trabajó en el regreso de Ladies' Code como grupo de 3 integrantes bajo BlockBerry Creative. En ese mismo año dicha agencia accedería a realizar el proyecto de 'La chica del mes' (LOOΠΔ). \n \n En su proyecto, las chicas viven en un universo paralelo llamado LOOΠΔVERSE, del cual se puede leer más en las descripciones de los vídeos musicales y teasers. Las miembros de LOONA 1/3 residen en la tierra y representan a niñas comunes que se pueden encontrar en las calles o en las escuelas. ODD EYE CIRCLE vive entre la tierra y el espacio (tierra media), muestran características cambiantes y mutativas al tiempo que sugieren que se debe tomar el control del amor en lugar de ser pasivo. Por último, yyxy habitan en una 'utopía', conocida como 'Edenism', más allá de la tierra y la tierra media. Deciden escapar de su 'Edén' para descubrirse a sí mismas. No hay una línea de tiempo oficial del LOOΠΔVERSE que BlockBerry Creative o Jaden Jeong hayan confirmado, sino que se entregan pistas a través de las revelaciones de miembros, videos musicales y teasers.",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          )
        ],
      ),
    );
  }
}
