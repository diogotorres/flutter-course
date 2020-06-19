import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          body: ListaTransferencia(),
          appBar: AppBar(title: Text('Transferências'),),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
          ),
        ),
      )
  );
}

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemTransferencia(Transferencia(100.0, 123)),
        ItemTransferencia(Transferencia(200.0, 456)),
        ItemTransferencia(Transferencia(300.0, 789)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {

  final Transferencia _transferencia;
  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.conta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int conta;
  Transferencia(this.valor, this.conta);
}