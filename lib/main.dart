import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_tapper/sobrepag.dart';

void main() {
  runApp(const MaterialApp (title: "App",
      home: MyApp(),));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       scaffoldBackgroundColor: Color.fromARGB(255, 253, 234, 169),
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 109, 16, 0)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
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
        leading: 
               IconButton(onPressed: () {} , icon:const Icon(Icons.home), ),
                actions: [
                  IconButton(onPressed: () {Navigator.push(
context,
MaterialPageRoute(builder:
(context) => const sobrepag()),
);} , icon:const Icon(Icons.sports_esports) ),
                  IconButton(onPressed: () {} , icon:const Icon(Icons.image) ),
                ],
         title:SizedBox(height: 45,child:Image.asset('img/title.png',),),
         centerTitle: true,
      ),
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(20.0), child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Text(
              '  Tapper é um jogo lançado em 1984 e distribuído pela Sega onde o jogador entra na pele de um bartender e precisa atender os clientes o mais rápido possível.',
              style: TextStyle(
                fontSize: 30,
                foreground: Paint()
                ..style = PaintingStyle.fill
                ..color = const Color.fromRGBO(88, 134, 87, 1),
              )
            ),
            
            const Image(
  image:AssetImage('img/tapper.png') 
),
          ],
        ),
      ),
    ));
  }
}
