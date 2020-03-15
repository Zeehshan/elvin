import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app_elevinp/models/especialidad_modelo.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailDoctor extends StatefulWidget {
  final Doctor doctor;
  const DetailDoctor({Key key, this.doctor}) : super(key: key);
  @override
  _DetailDoctorState createState() => _DetailDoctorState();
}

class _DetailDoctorState extends State<DetailDoctor> {
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  GoogleMapController mapController;
  CameraPosition _kGooglePlex =  CameraPosition(
    target: LatLng(31.5204, 74.3587),
    zoom: 14.4746,
  );
  Completer<GoogleMapController> _controller = Completer();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    markers[MarkerId(widget.doctor.imageUrl)] = Marker(
      onTap: (){
        _launchURL(widget.doctor.lat.toString(),widget.doctor.lng.toString());
      },
      markerId: MarkerId(widget.doctor.imageUrl),
      draggable: true,
      position: LatLng(
        widget.doctor.lat,
        widget.doctor.lng,
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueGreen,
      ),
    );

  }

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
                                    AssetImage(widget.doctor.imageUrl),
                                backgroundColor: Colors.black12,
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      widget.doctor.nombre,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.0),
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      widget.doctor.especialidad,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17.0,
                                      ),
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      widget.doctor.clinica,
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
                                widget.doctor.direccion,
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0,
                                  color: Colors.black54,
                                ),
                              ),
                              Text(
                                widget.doctor.ciudad,
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0,
                                  color: Colors.black54,
                                ),
                              ),
                              Text(
                                'Tel. ${widget.doctor.telefono}',
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
                                width: MediaQuery.of(context).size.width,
                                height: 150,
                                child: GoogleMap(
                                  zoomGesturesEnabled:false,
                                  scrollGesturesEnabled:false,
                                  mapType: MapType.normal,
                                    markers:Set<Marker>.of(markers.values),
                                    initialCameraPosition: CameraPosition(
                                      target: LatLng(widget.doctor.lat, widget.doctor.lng),
                                      zoom: 12,
                                    ),
                                  myLocationEnabled: true,
                                  myLocationButtonEnabled: true,
                                  onMapCreated: (GoogleMapController controller) {
                                    _controller.complete(controller);
                                  },
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
                                    widget.doctor.seguroUrl,
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
  _launchURL(String val1, String val2) async {
    var url = Platform.isIOS
        ? 'https://maps.apple.com/?q=${val1.trim()},${val2.trim()}&z=20'
        : "geo:${val1.trim()},${val2.trim()}?q=${val1.trim()},${val2.trim()}&z=48";
//        : 'geo:${val1.trim()},${val2.trim()}?q=${val1.trim()},${val2.trim()}($address)?z=48';
//    'google.streetview:cbll=${val1.trim()},${val2.trim()}?q=${val1.trim()},${val2.trim()}($address)';
//    'geo:${val1.trim()},${val2.trim()}?q=${val1.trim()},${val2.trim()}?z=17';
//    'google.navigation:q=${val1.trim()},${val2.trim()}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
