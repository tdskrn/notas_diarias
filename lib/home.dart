import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerTitulo = TextEditingController();
  TextEditingController _controllerDescricao = TextEditingController();
  _exibirTelaEdicao() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Adicionar Anotação'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _controllerTitulo,
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: 'Título',
                    hintText: 'Digite seu título',
                  ),
                ),
                TextField(
                  controller: _controllerDescricao,
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: 'Descrição',
                    hintText: 'Digite sua descrição',
                  ),
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {
                  // salvar
                  Navigator.pop(context);
                },
                child: Text('Salvar'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anotações Diárias'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: () {
          _exibirTelaEdicao();
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
