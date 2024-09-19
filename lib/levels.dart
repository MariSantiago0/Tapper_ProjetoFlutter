import 'package:flutter/material.dart';
import 'package:projeto_tapper/soundpag.dart';
import 'package:projeto_tapper/sobrepag.dart';
import 'package:projeto_tapper/main.dart';

class classeFases {
  String pontuacaoFase;
  String cenarioImg;
  String personagemFase;

  classeFases(this.pontuacaoFase, this.cenarioImg, this.personagemFase);
}

class LevelPag extends StatelessWidget {
  LevelPag({Key? key}) : super(key: key);

  ClasseDescricao faseSaloon = ClasseDescricao(
      '   Se passa nos 1-2 níveis. Cada cliente atendido nessa fase concede 50 pontos.',
      'Roboto',
      'Saloon',
      'subtitulo',
      17,
      0xFF000000,
      1);

  ClasseDescricao faseSportsbar = ClasseDescricao(
      '   Se passa nos 3-5 níveis. Cada cliente atendido nessa fase concede 75 pontos.',
      'Roboto',
      'Sports Bar',
      'subtitulo',
      17,
      0xFF000000,
      1);

  ClasseDescricao fasePunkbar = ClasseDescricao(
      '   Se passa nos 6-9 níveis. Cada cliente atendido nessa fase concede 100 pontos.',
      'Roboto',
      'Punk Bar',
      'subtitulo',
      17,
      0xFF000000,
      1);

  ClasseDescricao faseAlienbar = ClasseDescricao(
      '   Se passa nos 10-13 níveis. Cada cliente atendido nessa fase concede 150 pontos.',
      'Roboto',
      'Alien Bar',
      'subtitulo',
      17,
      0xFF000000,
      1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffc80000),
        iconTheme: const IconThemeData(color: Color(0xffffffff)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: const Color(0xffc80000),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Fases',
                style: TextStyle(
                  color: Color(0xffc80000),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(7),
              width: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 243, 217, 132),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // fase 1 saloon
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      textAlign: TextAlign.justify,
                      faseSaloon.titulo,
                      style: TextStyle(
                        fontFamily: faseSaloon.fonte,
                        fontSize: 20,
                        color: const Color(0xffc80000),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.justify,
                    faseSaloon.texto,
                    style: TextStyle(
                      fontFamily: faseSaloon.fonte,
                      fontSize: faseSaloon.tamanho.toDouble(),
                      color: Color(faseSaloon.cor),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 217, 132),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.justify,
                          'Personagens',
                          style: TextStyle(
                            fontFamily: faseSaloon.fonte,
                            fontSize: 20,
                            color: const Color(0xffc80000),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              margin: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('img/cowboyGreen.png'),
                                ),
                              ),
                            ),
                            Container(
                              width: 90,
                              height: 90,
                              margin: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('img/cowboyBlue.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              margin: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('img/cowgirlPink.png'),
                                ),
                              ),
                            ),
                            Container(
                              width: 90,
                              height: 90,
                              margin: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('img/cowboyPink.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.justify,
                    'Cenário',
                    style: TextStyle(
                      fontFamily: faseSaloon.fonte,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffc80000),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 250,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('img/saloonCenario.png'),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 4,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xffc80000),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
            ),

            // fase 2 sports bars
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(7),
              width: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 243, 217, 132),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      textAlign: TextAlign.justify,
                      faseSportsbar.titulo,
                      style: TextStyle(
                        fontFamily: faseSportsbar.fonte,
                        fontSize: 20,
                        color: const Color(0xffc80000),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.justify,
                    faseSportsbar.texto,
                    style: TextStyle(
                      fontFamily: faseSportsbar.fonte,
                      fontSize: faseSportsbar.tamanho.toDouble(),
                      color: Color(faseSportsbar.cor),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 217, 132),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.justify,
                          'Personagens',
                          style: TextStyle(
                            fontFamily: faseSportsbar.fonte,
                            fontSize: 20,
                            color: const Color(0xffc80000),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              margin: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('img/football.png'),
                                ),
                              ),
                            ),
                            Container(
                              width: 90,
                              height: 90,
                              margin: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('img/baseball.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              margin: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('img/basketball.png'),
                                ),
                              ),
                            ),
                            Container(
                              width: 90,
                              height: 90,
                              margin: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('img/tennis.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.justify,
                    'Cenário',
                    style: TextStyle(
                      fontFamily: faseSportsbar.fonte,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffc80000),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 250,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('img/sportsbarCenario.png'),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Container(
                    height: 4,
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xffc80000),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                  ),

                  // fase 3 punk bar
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.all(7),
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 217, 132),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            textAlign: TextAlign.justify,
                            fasePunkbar.titulo,
                            style: TextStyle(
                              fontFamily: fasePunkbar.fonte,
                              fontSize: 20,
                              color: const Color(0xffc80000),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          textAlign: TextAlign.justify,
                          fasePunkbar.texto,
                          style: TextStyle(
                            fontFamily: fasePunkbar.fonte,
                            fontSize: fasePunkbar.tamanho.toDouble(),
                            color: Color(fasePunkbar.cor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 243, 217, 132),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.all(7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                textAlign: TextAlign.justify,
                                'Personagens',
                                style: TextStyle(
                                  fontFamily: fasePunkbar.fonte,
                                  fontSize: 20,
                                  color: const Color(0xffc80000),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    margin: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('img/spike.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 90,
                                    height: 90,
                                    margin: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('img/pin.png'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    margin: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('img/punkgirl.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 90,
                                    height: 90,
                                    margin: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('img/purple.png'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.justify,
                          'Cenário',
                          style: TextStyle(
                            fontFamily: fasePunkbar.fonte,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffc80000),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 250,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('img/punkbarCenario.png'),
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        Container(
                          height: 4,
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color(0xffc80000),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // fase 4 alien bar
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.all(7),
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 217, 132),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            textAlign: TextAlign.justify,
                            faseAlienbar.titulo,
                            style: TextStyle(
                              fontFamily: faseAlienbar.fonte,
                              fontSize: 20,
                              color: const Color(0xffc80000),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          textAlign: TextAlign.justify,
                          faseAlienbar.texto,
                          style: TextStyle(
                            fontFamily: faseAlienbar.fonte,
                            fontSize: faseAlienbar.tamanho.toDouble(),
                            color: Color(faseAlienbar.cor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 243, 217, 132),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.all(7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                textAlign: TextAlign.justify,
                                'Personagens',
                                style: TextStyle(
                                  fontFamily: faseAlienbar.fonte,
                                  fontSize: 20,
                                  color: const Color(0xffc80000),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    margin: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('img/alienred.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 90,
                                    height: 90,
                                    margin: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('img/aliensmall.png'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    margin: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('img/alienpurple.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 90,
                                    height: 90,
                                    margin: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('img/aliengreen.png'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.justify,
                          'Cenário',
                          style: TextStyle(
                            fontFamily: faseAlienbar.fonte,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffc80000),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 250,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('img/alienbarCenario.png'),
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
