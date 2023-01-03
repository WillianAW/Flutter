import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_3/contador.dart';
import './main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const TelaInicial());
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Tela Incial", home: const PrimeiraTela());
  }
}

class PrimeiraTela extends StatefulWidget {
  const PrimeiraTela({super.key});

  @override
  State<PrimeiraTela> createState() => _PrimeiraTelaState();
}

class _PrimeiraTelaState extends State<PrimeiraTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF701ebd),
          title: Text("MeuApp"),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 3, 147, 249),
            Color.fromARGB(255, 54, 3, 240),
            Color.fromARGB(255, 51, 35, 94),
            Color.fromARGB(255, 8, 1, 30),
          ], 
          begin: Alignment.topRight, end: Alignment.bottomLeft)
          ),
          child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary:Color(0xFF701ebd)),
              child: Text("Iniciar Contador"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MinhaAplicacao(),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
