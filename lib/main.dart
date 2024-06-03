import 'package:flutter/material.dart';
import 'package:projeto_tapper/imgpag.dart';
import 'package:projeto_tapper/sobrepag.dart';

void main() {
  runApp(const MaterialApp(
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
        scaffoldBackgroundColor: const Color.fromARGB(255, 253, 234, 169),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromRGBO(82, 2, 2, 1)),
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
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 243, 217, 132), // Cor do fundo
              borderRadius: BorderRadius.circular(8), // Borda arredondada (opcional)
            ),
            padding: const EdgeInsets.all(10), // Espaçamento interno (opcional)
            child: const Text(
              '  Tapper é um jogo lançado em 1984 e distribuído pela Sega onde o jogador entra na pele de um bartender e precisa atender os clientes o mais rápido possível.',
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
          Center( child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 243, 217, 132), // Cor do fundo
              borderRadius: BorderRadius.circular(8), // Borda arredondada (opcional)
            ),
            padding: const EdgeInsets.all(8), // Espaçamento interno (opcional)
            child: const Text(
              'Bartender',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(88, 134, 87, 1), // Cor do texto
              ),
            ),)
          ),
          const Image(image: AssetImage('img/tapper.png')),
        ],
      ),
    );
  }
}
