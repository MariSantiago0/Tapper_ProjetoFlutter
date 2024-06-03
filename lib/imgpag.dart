import 'package:flutter/material.dart';
import 'package:projeto_tapper/main.dart';
import 'package:projeto_tapper/sobrepag.dart';

class ImgPag extends StatelessWidget {
  const ImgPag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 253, 234, 169),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(82, 2, 2, 1),
          
        ),
        useMaterial3: true,
        
        
        
      ),
      
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget buildImageContainer(String imagePath, String label) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.contain,
            width: 250, // Ajuste a largura conforme necessário
            height: 250, // Ajuste a altura conforme necessário
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(88, 134, 87, 1),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
                const Text(
                  'Imagens do Jogo',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                ),
                const SizedBox(height: 20), // Espaço entre o título e a primeira imagem
                buildImageContainer('img/posterarcade.png', 'Poster do Arcade'),
                buildImageContainer('img/posteratari.png', 'Poster do Atari'),
                Container(
                  height: 5,
                  width: 300,
                  color: Color.fromRGBO(88, 134, 87, 1),
                  margin: const EdgeInsets.symmetric(vertical: 20),
                ),
                buildImageContainer('img/menuarcade.png', 'Menu do Arcade'),
                buildImageContainer('img/menuatari.png', 'Menu do Atari'),
                buildImageContainer('img/arcade.png', 'Arcade'),
                buildImageContainer('img/atari.png', 'Atari'),
                buildImageContainer('img/minigamearcde.png', 'Minigame do Arcade'),
                buildImageContainer('img/minigameatari.png', 'Minigame do Atari'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
