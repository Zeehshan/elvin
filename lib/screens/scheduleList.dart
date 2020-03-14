import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'doctor.dart';

class ScheduleList extends StatelessWidget {
  final Doctors doctors;
  ScheduleList({this.doctors});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: doctors.schedules.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final schedule = doctors.schedules[index];
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 100.0,
          margin: EdgeInsets.symmetric(vertical: 10.0),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.pink[50],
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  color: Colors.pink[100],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      schedule.date,
                      style: GoogleFonts.archivoBlack(
                          fontSize: 20.0,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5.0),
                    Text(schedule.month,
                        style: GoogleFonts.archivoBlack(
                          fontSize: 15.0,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                width: 200.0,
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(schedule.name,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,

                    ),
                    ),
                    Text('${schedule.day} - ${schedule.scheduleTime}',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                      color: Colors.black54
                    ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
