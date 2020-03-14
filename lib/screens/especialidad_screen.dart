import 'package:flutter/material.dart';
import 'package:flutter_app_elevinp/models/especialidad_modelo.dart';

import 'doctor_screen.dart';
//import 'package:drdir/models/doctor_modelo.dart';
//import '../DeliveryScreen.dart';

class EspecialidadScreen extends StatefulWidget {
  final Especialidad especialidad;

  EspecialidadScreen({this.especialidad});

  @override
  _EspecialidadScreenState createState() => _EspecialidadScreenState();
}

class _EspecialidadScreenState extends State<EspecialidadScreen> {
  var doctor;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            automaticallyImplyLeading: true,
            //`true` if you want Flutter to automatically add Back Button when needed,
            //or `false` if you want to force your own back button every where
            title: Text('Especialidades Medicas'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            )),
      backgroundColor: Colors.blue[300],
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 25.0, bottom: 15.0),
              itemCount: especialidades.length,
              itemBuilder: (BuildContext context, int index) {
                Especialidad especialidad = especialidades[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DoctorScreen(
                      doctor: especialidad.doctores,
                      title: especialidad.nombre,
                      ),
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 5.0),
                        height: 60.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 5.0,
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(25.0, 10.0, 10.0, 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 200.0,
                                    child: Text(
                                      especialidad.nombre,
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
