import 'package:flutter/material.dart';
import 'package:projeto_tapper/soundpag.dart';
import 'package:projeto_tapper/main.dart';
import 'package:projeto_tapper/levels.dart';

final ClasseDescricao objetivo = ClasseDescricao(
  '   Sirva os clientes e os mande para longe dos barris de cerveja. Essa ideia foi desenvolvida pela Sega, onde você cuida de um bar e seus clientes estão sedentos por cerveja e você os servirá, mas cuidado com os clientes mais beberrões, eles irão devolver o copo e você não pode deixar cair.',
  'Roboto',
  'Título 1',
  'Subtítulo 1',
  17,
  0xFF000000,
  1,
);

final ClasseDescricao versoes = ClasseDescricao(
    '   O jogo possui duas versões, uma de arcade e uma de Atari, onde a versão de arcade é mais detalhada do que a de Atari, que é em 8-bits, e chegou a ter uma parceria com a marca famosa de cerveja Budweiser.',
    'Roboto',
    '',
    'subtitulo',
    17,
    0xFF000000,
    1);

final ClasseDescricao gameplay = ClasseDescricao(
    '   O jogador é o bartender que precisa atender seus clientes rapidamente, existem 4 balcões onde ficam os clientes querendo sua cerveja, o jogador precisa ser ágil para atender todos os clientes a tempo e não deixar com que os copos (que alguns clientes jogam de volta para o bartender) caiam. Existe um minigame no fim de cada fase onde um homem mascarado balança as cervejas e o jogador precisa acertar qual foi a cerveja que não foi chacoalhada.',
    'Roboto',
    'Gameplay',
    'subtitulo',
    17,
    0xFF000000,
    1);

final ClasseImg arcadeImg = ClasseImg('img/arcade.png', 'Arcade', 1);
final ClasseImg atariImg = ClasseImg('img/atari.png', 'atari', 1);

class SobrePag extends StatelessWidget {
  const SobrePag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Número de abas
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xffffffff)),
          backgroundColor: Color(0xffd40101),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Sobre o Jogo'),
              Tab(text: 'Gameplay'),
            ],
            labelStyle: TextStyle(
                color: Color(0xffffffff)), // Estilo do texto selecionado
            unselectedLabelStyle: TextStyle(
                color: Color(0xff000000)), // Estilo do texto não selecionado
          ),
          title: const Text(
            'Visão Geral',
            style: TextStyle(
              color: Color(0xffffffff),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // Primeiro Tab: Sobre o Jogo
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 217, 132),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        objetivo.texto,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: objetivo.tamanho.toDouble(),
                          fontFamily: objetivo.fonte,
                          color: Color(objetivo.cor),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Versões do Jogo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..style = PaintingStyle.fill
                          ..color = Color(0xffd40101),
                      ),
                    ),
                    Text(
                      'Arcade',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..style = PaintingStyle.fill
                          ..color = Color(0xffd40101),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 250, // largura desejada
                        height: 190, // altura desejada
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              15), // Raio de borda uniforme
                        ),
                        clipBehavior: Clip
                            .hardEdge, // Garante que a imagem seja cortada pelas bordas
                        child: Image.asset(arcadeImg.img,
                            fit: BoxFit
                                .cover), // Ajusta a imagem para cobrir o espaço
                      ),
                    ),
                    Text(
                      'Atari',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..style = PaintingStyle.fill
                          ..color = Color(0xffd40101),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 250, // largura desejada
                        height: 190, // altura desejada
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              10), // Raio de borda uniforme
                        ),
                        clipBehavior: Clip
                            .hardEdge, // Garante que a imagem seja cortada pelas bordas
                        child: Image.asset(atariImg.img,
                            fit: BoxFit
                                .cover), // Ajusta a imagem para cobrir o espaço
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 217, 132),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        versoes.texto,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: versoes.tamanho.toDouble(),
                          color: Color(versoes.cor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Segundo Tab: Versões e Gameplay
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Gameplay',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..style = PaintingStyle.fill
                          ..color = const Color(0xffd40101),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 217, 132),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        gameplay.texto,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: gameplay.tamanho.toDouble(),
                          color: Color(gameplay.cor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
