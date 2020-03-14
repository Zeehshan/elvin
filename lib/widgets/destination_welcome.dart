//import 'package:drdir/screens/lista_especialidades.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_elevinp/screens/especialidad_screen.dart';

void main() => runApp(DestinationWelcome());

class DestinationWelcome extends StatelessWidget {
  //get especialidad => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      margin: EdgeInsets.all(0.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
          color: Colors.blue),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Container(
                margin: EdgeInsets.only(left:25.0, top:10.0, bottom: 0.0),
                child: Text('Buscar por:', style: TextStyle(fontSize: 17.0, color: Colors.white),),
              )
            ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    margin: EdgeInsets.only(left:25.0, top:15.0, right: 25.0, bottom: 15.0),
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      decoration: new InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.grey),
                          hintText: "Nombre del Doctor(a)",
                          fillColor: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Row(children: <Widget>[
              Container(
                margin: EdgeInsets.only(left:25.0, top:0.0, bottom: 0.0),
                child: Text('O buscar por:', style: TextStyle(fontSize: 17.0, color: Colors.white),),
              )
            ],
            ),
            Container(
              width: double.infinity,
              height: 118.0,
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blue,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                        elevation: 6.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return EspecialidadScreen(
                                //especialidad: especialidad,
                              );
                              //return ListaEspecialidades();
                            },
                          ),
                        ),
                        color: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.accessibility,
                                color: Colors.blue,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Especialidad",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      RaisedButton(
                        color: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.local_hospital,
                                color: Colors.blue,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Clinica",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                      RaisedButton(
                        color: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.directions_walk,
                                color: Colors.blue,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Distancia",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
