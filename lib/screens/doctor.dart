
import 'package:flutter_app_elevinp/screens/schedule.dart';

class Doctors {
  final String name;
  final String specialist;
  final String hospital;
  final String about;
  final String urlimage;
  final List<Schedules> schedules;
  Doctors(
      {this.name, 
      this.specialist, 
      this.hospital, 
      this.about, 
      this.urlimage,
      this.schedules,
      });
}

List<Doctors> dummyDoctors = [
  Doctors(
    name: "Miguel Guerrero",
    specialist: "Mouth Specialist",
    hospital: "Clinica Dr. Abreu",
    about:"sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    urlimage: "images/adhisty_zara_s.jpg",
    schedules: [
      Schedules(  
        name: 'Consultation',
        date: '15',
        month: 'Jan',
        day: 'Monday',
        scheduleTime: '8am - 3pm',
      ),
      Schedules(  
        name: 'Consultation',
        date: '15',
        month: 'Jan',
        day: 'Monday',
        scheduleTime: '8am - 3pm',
      ),
      Schedules(  
        name: 'Meditation',
        date: '27',
        month: 'Jul',
        day: 'Sunday',
        scheduleTime: '1am - 3am',
      ),
    ],
  ),
  Doctors(
    name: "Juan Perez",
    specialist: "Dentist",
    hospital: "Centro Medico Moderno",
    about:
        "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    urlimage: "images/aninditha_rahma_cahyadi_s.jpg",
    schedules: [
      Schedules(  
        name: 'Consultation',
        date: '15',
        month: 'Jan',
        day: 'Monday',
        scheduleTime: '8am - 3pm',
      ),
      Schedules(  
        name: 'Consultation',
        date: '15',
        month: 'Jan',
        day: 'Monday',
        scheduleTime: '8am - 3pm',
      ),
      Schedules(  
        name: 'Meditation',
        date: '27',
        month: 'Jul',
        day: 'Sunday',
        scheduleTime: '1am - 3am',
      ),
    ],
  ),
  Doctors(
    name: "Robert Cruz",
    specialist: "Acupuncture Specialist",
    hospital: "Clinica Real",
    about:
        "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    urlimage: "images/frieska_anastasia_laksani_s.jpg",
    schedules: [
      Schedules(  
        name: 'Consultation',
        date: '15',
        month: 'Jan',
        day: 'Monday',
        scheduleTime: '8am - 3pm',
      ),
      Schedules(  
        name: 'Consultation',
        date: '15',
        month: 'Jan',
        day: 'Monday',
        scheduleTime: '8am - 3pm',
      ),
      Schedules(  
        name: 'Meditation',
        date: '27',
        month: 'Jul',
        day: 'Sunday',
        scheduleTime: '1am - 3am',
      ),
    ],
  ),
  Doctors(
    name: "Frank Guerrero",
    specialist: "General Practitioners",
    hospital: "Centro Moderno",
    about:
        "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    urlimage: "images/michelle_christo_kusnadi_s.jpg",
    schedules: [
      Schedules(  
        name: 'Consultation',
        date: '15',
        month: 'Jan',
        day: 'Monday',
        scheduleTime: '8am - 3pm',
      ),
      Schedules(  
        name: 'Consultation',
        date: '15',
        month: 'Jan',
        day: 'Monday',
        scheduleTime: '8am - 3pm',
      ),
      Schedules(  
        name: 'Meditation',
        date: '27',
        month: 'Jul',
        day: 'Sunday',
        scheduleTime: '1am - 3am',
      ),
    ],
  ),
  Doctors(
    name: "Ramon Sanchez",
    specialist: "Clinical Psycology",
    hospital: "Centro Pediatria",
    about:
        "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    urlimage: "images/ayana_shahab.jpg",
    schedules: [
      Schedules(  
        name: 'Consultation',
        date: '15',
        month: 'Jan',
        day: 'Monday',
        scheduleTime: '8am - 3pm',
      ),
      Schedules(  
        name: 'Consultation',
        date: '15',
        month: 'Jan',
        day: 'Monday',
        scheduleTime: '8am - 3pm',
      ),
      Schedules(  
        name: 'Meditation',
        date: '27',
        month: 'Jul',
        day: 'Sunday',
        scheduleTime: '1am - 3am',
      ),
    ],
  ),
];
