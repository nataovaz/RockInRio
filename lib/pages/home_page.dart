import 'package:flutter/material.dart';
import 'package:rockinrio/models/atracao_model.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Atracoes")
      ),
        body: ListView.builder(
          itemCount: listaAtracoes.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(listaAtracoes[index.nome]),
            )
          },
        )
      );
  }
}
