import 'package:flutter/material.dart';
import 'package:projeto_tapper/sobrepag.dart';
import 'package:projeto_tapper/main.dart';

class ImgPag extends StatelessWidget {
const ImgPag({super.key});
}

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Tela'),
      ),
      body: Center(child: Column(children:
      [const Text("Dados Recebidos"),
        Image.asset('img/img02.jpg',width: 220,height: 220,),
         ElevatedButton(
          onPressed: () {
            // Botão que voltará ´para a tela anterior
          },
          child: const Text('Voltar!'),
        ),
     ] ),
    ));}