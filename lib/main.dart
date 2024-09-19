import 'package:flutter/material.dart';
import 'package:projeto_tapper/soundpag.dart';
import 'package:projeto_tapper/sobrepag.dart';
import 'package:projeto_tapper/levels.dart';

class ClasseDescricao {
  String texto;
  String fonte;
  int tamanho;
  int cor;
  String titulo;
  int posicao;
  String subtitulo;

  ClasseDescricao(this.texto, this.fonte, this.titulo, this.subtitulo,
      this.tamanho, this.cor, this.posicao);
}

class ClasseImg {
  String img;
  int posicao;
  String legenda;

  ClasseImg(this.img, this.legenda, this.posicao);
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "App",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color.fromARGB(255, 253, 234, 169),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffffffff)),
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
  final ClasseDescricao descricao = ClasseDescricao(
    '   Tapper é um jogo lançado em 1984 e distribuído pela Sega onde o jogador entra na pele de um bartender e precisa atender os clientes o mais rápido possível.',
    'Roboto',
    'Título 1',
    'Subtítulo 1',
    17,
    0xFF000000,
    1,
  );

  final ClasseImg img = ClasseImg('img/tapper.png', '', 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Container(
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
          child: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SobrePag()),
                    );
                  },
                  icon: const Icon(Icons.history_edu,
                      color: Color(0xffffffff), size: 30.0),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LevelPag()),
                    );
                  },
                  icon: const Icon(Icons.sports_esports,
                      color: Color(0xffffffff), size: 30.0),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SoundPag()),
                    );
                  },
                  icon: const Icon(Icons.audiotrack,
                      color: Color(0xffffffff), size: 30.0),
                ),
              ],
            ),
            backgroundColor: const Color(0x00000000),
            elevation: 0,
            centerTitle: true,
          ),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              ClipRect(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  heightFactor: 0.7,
                  widthFactor: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color(0xffd40101),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                width: 300,
                height: 220,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(img.img),
                      fit: BoxFit.contain, // Mantém a proporção da imagem
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Center(
            child: Container(
              width: 280,
              height: 95,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/ttitle.png'),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 243, 217, 132),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.justify,
                  descricao.texto,
                  style: TextStyle(
                    fontFamily: descricao.fonte,
                    fontSize: descricao.tamanho.toDouble(),
                    color: Color(descricao.cor),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
