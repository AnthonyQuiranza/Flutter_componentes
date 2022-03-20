import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_library_outlined,
              color: Colors.blue,
            ),
            title: Text('Soy un título'),
            subtitle: Text('Este es un ejemplo de subtítulo de una tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('OK'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('data/assets/jar-loading.gif'),
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Landscape.svg/2560px-Landscape.svg.png'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          //   Image(
          //       image: NetworkImage(
          //           'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Landscape.svg/2560px-Landscape.svg.png')),
          Container(
              padding: EdgeInsets.all(10.0), child: Text('ESTA ES UNA IMAGEN'))
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]
          // color: Colors.red
          ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
