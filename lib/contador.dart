import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const TelaInicial());
}

class ClassePrincipal extends StatelessWidget {
  const ClassePrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: const MinhaAplicacao());
  }
}

class MinhaAplicacao extends StatefulWidget {
  const MinhaAplicacao({super.key});

  @override
  State<MinhaAplicacao> createState() => _MinhaAplicacaoState();
}

class _MinhaAplicacaoState extends State<MinhaAplicacao> {
  int _count = 0;

  void _reset() {
    _count = 0;
    setState(() {});
  }

  void _changeCount(int numero) {
    setState(() {
      _count += numero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          centerTitle: true,
          elevation: 15, // sombra preta em baixo do appbar
          title: Text('Contador'),
          backgroundColor: Color(0xFF873bcc),
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 3, 147, 249),
            Color.fromARGB(255, 54, 3, 240),
            Color.fromARGB(255, 51, 35, 94),
            Color.fromARGB(255, 8, 1, 30),
            ], 
            
            begin: Alignment.topRight, end: Alignment.bottomLeft)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$_count",
                    style: TextStyle(color: Colors.white, fontSize: 130.0)),
                    
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(10.0),
                        child: IconButton(
                          onPressed: () {
                            _changeCount(1);
                          },
                          icon: const Icon(
                            Icons.arrow_drop_up,
                            color: Colors.white,
                            size: 40.0,
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.all(10.0),
                        child: IconButton(
                          onPressed: () {
                            _changeCount(-1);
                          },
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 40.0,
                          ),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: IconButton(
                        onPressed: () {
                          _reset();
                        },
                        icon: const Icon(
                          Icons.replay,
                          color: Colors.white,
                          size: 28.0,
                        ),
                      ))
                ])
              ],
            )));
  }
}
