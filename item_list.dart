import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return criaListView();
  }

  criaListView() {
    var notas = [
      Note(titulo: "Aula 1", descricao: "Foi passado conteudo tal tal tal"),
      Note(titulo: "Aula 2", descricao: "Foi passado conteudo tal tal tal"),
      Note(titulo: "Aula 3", descricao: "Foi passado conteudo tal tal tal")
    ];

    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 16.0),
      itemCount: notas.length,
      itemBuilder: (context, index) {
        //Aqui carregamos os dados na listview
        var nota = notas[index];

        return Ink(
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            onTap: () => {}, //aqui sera responsavel para ir a area de edicao
            title: Text(
              nota.titulo,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              nota.descricao,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        );
      },
    );
  }
}
