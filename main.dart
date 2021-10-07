import 'package:curso_flutter/pages/pagina02.dart';
import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  Empresa _twiter = new Empresa("Twitter", "Sara Lopez", 20000000);
  Empresa _facebook = new Empresa("Facebook", "Mark Zuck", 50000000);

  @override
  void initState() {
    super.initState();

    print(_twiter);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "Clases",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Clases"),
          ),
          body: Center(
            child: Text(
              _twiter.ingresoAnual.toString(),
            ),
          ),
        ),
      ),
    );
  }
}

class Empresa {
  late String nombre;
  late String propietario;
  late int ingresoAnual;

  Empresa(String nombre, String propietario, int ingreso) {
    this.nombre = nombre;
    this.propietario = propietario;
    this.ingresoAnual = ingreso;
  }
}
