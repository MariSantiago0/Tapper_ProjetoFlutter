import 'package:flutter/material.dart';
import 'package:projeto_tapper/imgpag.dart';
import 'package:projeto_tapper/main.dart';

class SobrePag extends StatelessWidget {
  const SobrePag({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false, // Remover o ícone de voltar
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },
            icon: const Icon(Icons.home,
                color: Color.fromARGB(255, 255, 0, 0), size: 30.0),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SobrePag()),
              );
            },
            icon: const Icon(Icons.sports_esports,
                color: Color.fromARGB(255, 255, 0, 0), size: 30.0),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ImgPag()),
              );
            },
            icon: const Icon(Icons.image,
                color: Color.fromARGB(255, 255, 0, 0), size: 30.0),
          ),
        ],
        title: SizedBox(
          height: 45,
          child: Image.asset(
            'img/title.png',
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sobre o Jogo',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.fill
                      ..color = Color.fromARGB(255, 255, 0, 0),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 217, 132), // Cor do fundo
                    borderRadius: BorderRadius.circular(8), // Borda arredondada (opcional)
                  ),
                  padding: const EdgeInsets.all(8), // Espaçamento interno (opcional)
                  child: const Text(
                    ' Sirva os clientes e os mande para longe dos barris de cerveja. Essa ideia foi desenvolvida pela Sega, onde você cuida de um bar e seus clientes estão sedentos por cerveja e você os servirá, mas cuidado com os clientes mais beberrões, eles irão devolver o copo e você não pode deixar cair.',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromRGBO(88, 134, 87, 1), // Cor do texto
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  ' Versões do Jogo',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.fill
                      ..color = Color.fromRGBO(88, 134, 87, 1),
                  ),
                ),

                 Text(
                  'Atari',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.fill
                      ..color = Color.fromRGBO(88, 134, 87, 1),
                  ),
                ),
                
                Container(
                  width: 250, // largura desejada
                  height: 250, // altura desejada
                  margin: EdgeInsets.zero, 
                  padding: EdgeInsets.zero,
                  child: Image.asset('img/atari.png'), 
                ),
              
                Text(
                  'Arcade',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.fill
                      ..color = Color.fromRGBO(88, 134, 87, 1),
                  ),
                ),

                Container(
                  width: 250, // largura desejada
                  height: 250, // altura desejada
                  margin: EdgeInsets.zero, 
                  child: Image.asset('img/arcade.png'), 
                ),
          
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 217, 132), // Cor do fundo
                    borderRadius: BorderRadius.circular(8), // Borda arredondada (opcional)
                  ),
                  padding: const EdgeInsets.all(8), // Espaçamento interno (opcional)
                  child: const Text(
                    ' O jogo possui duas versões, uma de arcade e uma de Atari, onde a versão de arcade é mais detalhada do que a de Atari, que é em 8-bits, e chegou a ter uma parceria com a marca famosa de cerveja Budweiser.',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromRGBO(88, 134, 87, 1), // Cor do texto
                    ),
                  ),
                ),
                 Container(
                   color: Color.fromRGBO(88, 134, 87, 1), // Cor da barra
                   height: 5, // Altura da barra
                   margin: EdgeInsets.symmetric(vertical: 10), // Espaçamento vertical em torno da barra
                  ),
                Text(
                  'Gameplay',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.fill
                      ..color = const Color.fromARGB(255, 255, 0, 0),
                  ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 217, 132), // Cor do fundo
                    borderRadius: BorderRadius.circular(8), // Borda arredondada (opcional)
                  ),
                  padding: const EdgeInsets.all(8), // Espaçamento interno (opcional)
                  child: const Text(
                    ' O jogador é o bartender que precisa atender seus clientes rapidamente, existem 4 balcões onde ficam os clientes querendo sua cerveja, o jogador precisa ser ágil para atender todos os clientes a tempo e não deixar com que os copos (que alguns clientes jogam de volta para o bartender) caiam. Existe um minigame no fim de cada fase onde um homem mascarado balança as cervejas e o jogador precisa acertar qual foi a cerveja que não foi chacoalhada.',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromRGBO(88, 134, 87, 1), // Cor do texto
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
