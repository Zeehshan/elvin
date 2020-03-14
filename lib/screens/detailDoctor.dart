import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

import 'doctor.dart';

class DetailDoctor extends StatelessWidget {
  final Doctors doctors;
  DetailDoctor({this.doctors});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 480,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/doctors.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            ],
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            child: DraggableScrollableSheet(
              minChildSize: 0.50,
              expand: true,
              builder:
                  (BuildContext context, ScrollController scrollcontroller) {
                return Container(
                  padding: EdgeInsets.only(top: 15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollcontroller,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 5),
                        Center(
                          child: Container(
                            width: 50.0,
                            height: 5.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 14),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30.0),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('assets/images/dr_6.jpg'),
                                backgroundColor: Colors.black12,
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Dra. Yesenia Tavares',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.0),
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      'Cardiólogo',
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17.0,
                                      ),
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      'Clínica Altagracia',
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17.0,
                                      ),
                                    ),
                                    SizedBox(height: 20.0),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 40.0,
                                          height: 40.0,
                                          padding: EdgeInsets.all(5.0),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.blue[50],
                                          ),
                                          child: Icon(
                                            Icons.call,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          width: 40.0,
                                          height: 40.0,
                                          padding: EdgeInsets.all(5.0),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.amber[50],
                                          ),
                                          child: Icon(
                                            Icons.message,
                                            color: Colors.amber,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          width: 40.0,
                                          height: 40.0,
                                          padding: EdgeInsets.all(5.0),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.red[50],
                                          ),
                                          child: Icon(
                                            Icons.videocam,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          margin: EdgeInsets.only(left: 25.0, right: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Estudios:',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Graduada de la escuela de medicina de la universidad INTEC, \npostgrado en la UNAM...',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0,
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Horario:',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Lunes a Viernes\n8 am - 12 m y\n4pm - 6 pm',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0,
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Dirección:',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Av. Sabana Larga #98,\nEnsanche Ozama, Santo Domingo Este\nTel. 809-596-9550',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0,
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Cómo llegar... ',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                child: Image(
                                  width: MediaQuery.of(context).size.width,
                                  image: AssetImage(
                                    'assets/images/clinicaaltagraciamap.png',
                                  ),
                                ),
                              ),
                              SizedBox(height: 25.0),
                              Text(
                                'Aceptamos los siguientes seguros:',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0,
                                ),
                              ),
                              Container(
                                child: Image(
                                  width: MediaQuery.of(context).size.width,
                                  image: AssetImage(
                                    'assets/images/seguro_2.jpg',
                                  ),
                                ),
                              ),
                              SizedBox(height: 25.0),
                              Text(
                                'Especialidades:',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                '- Cardiología Pediátrica\n- Cateterísmo Cardio Vascular',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0,
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(height: 25.0),
                              Text(
                                'Reservar cita ahora:',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                '- Escoger fecha y hora mas conveniente:',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0,
                                  color: Colors.black54,
                                ),
                              ),
                              Container(
                                child: Image(
                                  width: MediaQuery.of(context).size.width,
                                  image: AssetImage(
                                    'assets/images/citas_model.jpg',
                                  ),
                                ),
                              ),
                              SizedBox(height: 30.0),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
