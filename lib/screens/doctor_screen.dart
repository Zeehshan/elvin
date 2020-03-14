import 'package:flutter/material.dart';
import 'package:flutter_app_elevinp/models/doctor_modelo.dart';
import 'package:flutter_app_elevinp/models/especialidad_modelo.dart';

import 'detailDoctor.dart';
//import '../DeliveryScreen.dart';

class DoctorScreen extends StatefulWidget {
  final Doctor doctor;
  final String title;
  DoctorScreen({this.doctor, Especialidad especialidad,this.title});

  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          //`true` if you want Flutter to automatically add Back Button when needed,
          //or `false` if you want to force your own back button every where
          title: Text(widget.title),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          )),
      backgroundColor: Colors.blue[300],
      body: ListView.builder(
        padding: EdgeInsets.only(top: 25.0, bottom: 15.0),
        itemCount: doctores.length,
        itemBuilder: (BuildContext context, int index) {
          Doctor doctor = doctores[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailDoctor(),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                    height: 130.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 3.0,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(100.0, 10.0, 10.0, 10.0),
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 5.0,),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 180.0,
                                    child: Text(
                                      doctor.nombre,
                                      style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    width: 250.0,
                                    child: Text(
                                      doctor.clinica,
                                      style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              doctor.especialidad,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Expanded(
                              child: Container(
                                width: 250.0,
                                child: Image(
                                  width: 110.0,
                                  image: AssetImage(
                                    doctor.seguroUrl,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                Positioned(
                  left: 20.0,
                  top: 15.0,
                  bottom: 15.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      width: 110.0,
                      image: AssetImage(
                        doctor.imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
