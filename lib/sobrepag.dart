import 'package:flutter/material.dart';
import 'package:projeto_tapper/main.dart';

class SobrePag extends StatelessWidget {
const SobrePag({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre o Jogo',  style: TextStyle(
                fontSize: 30,
                foreground: Paint()
                ..style = PaintingStyle.fill
                ..color = const Color.fromARGB(255, 255, 0, 0),
              )) ,
        leading: 
               IconButton(onPressed: () {Navigator.push(
context,
MaterialPageRoute(builder:
(context) => const MyApp()),
);} , icon:const Icon(Icons.keyboard_return), ),
      ),
     
      body: Center(child: ListView(children:
      [Text(
              ' Sirva os clientes e os mande para longe dos barris de cerveja. Essa ideia foi desenvolvida pela Sega, onde você cuida de um bar e seus clientes estão sedentos por cerveja e você os servirá, mas cuidado com os clientes mais beberrões, eles irão devolver o copo e você não pode deixar cair.',
              style: TextStyle(
                fontSize: 30,
                foreground: Paint()
                ..style = PaintingStyle.fill
                ..color = const Color.fromRGBO(88, 134, 87, 1),
              )
            ),

        Text(
              ' Versões do Jogo',
              style: TextStyle(
                fontSize: 30,
                foreground: Paint()
                ..style = PaintingStyle.fill
                ..color = const Color.fromRGBO(88, 134, 87, 1),
              )
            ),

        const Image(
          image:AssetImage('img/atari.png', ) ,  
          ),
        const Image(
          image:AssetImage('img/arcade.png'),
          ),
        

        Text(
              'O jogo possui duas versões, uma de arcade e uma de Atari, onde a versão de arcade é mais detalhada do que a de Atari, que é em 8-bits, e chegou a ter uma parceria com a marca famosa de cerveja Budweiser.',
              style: TextStyle(
                fontSize: 30,
                foreground: Paint()
                ..style = PaintingStyle.fill
                ..color = const Color.fromRGBO(88, 134, 87, 1),
              )
            ),

        Text(
              'Gameplay',
              style: TextStyle(
                fontSize: 40,
                foreground: Paint()
                ..style = PaintingStyle.fill
                ..color = const Color.fromARGB(255, 255, 0, 0),
              )
            ),

        Text(
              ' O jogador é o bartender que precisa atender seus clientes rapidamente, existem 4 balcões onde ficam os clientes querendo sua cerveja, o jogador precisa ser ágil para atender todos os clientes a tempo e não deixar com que os copos (que alguns clientes jogam de volta para o bartender) caiam. Existe um minigame no fim de cada fase onde um homem mascarado balança as cervejas e o jogador precisa acertar qual foi a cerveja que não foi chacoalhada.',
              style: TextStyle(
                fontSize: 30,
                foreground: Paint()
                ..style = PaintingStyle.fill
                ..color = const Color.fromRGBO(88, 134, 87, 1),
              )
            ),
     ] ),
    ));

  }}

 